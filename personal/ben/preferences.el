;;; ben/preferences.el -- summary

;;; Commentary:
;; My personal preferences.

;;; Code:

;; Prevent auto-saving of files to improve performance of rhapsody.
(setq prelude-auto-save nil)

(custom-set-variables
 '(css-indent-offset 4)
 '(web-mode-css-indent-offset 4))

(prelude-require-package 'direx)
(prelude-require-package 'popwin)
(prelude-require-package 'phpcbf)

(require 'popwin)
(popwin-mode 1)

(require 'direx)
(require 'direx-project)
(push '(direx:direx-mode :position left :width 75 :dedicated t)
      popwin:special-display-config)
(global-set-key (kbd "C-x C-k") 'direx-project:jump-to-project-root-other-window)
(global-set-key (kbd "C-x C-j") 'direx:find-directory-other-window)

(add-hook 'php-mode-hook (lambda () (subword-mode 1)))

(require 'phpcbf)
;; composer global require "squizlabs/php_codesniffer=*"
;; composer global require drupal/coder
;; phpcs --config-set installed_paths ~/.composer/vendor/drupal/coder/coder_sniffer/Drupal
(custom-set-variables
 '(phpcbf-executable "~/.composer/vendor/bin/phpcbf")
 '(phpcbf-standard "PSR2"))
(define-key php-mode-map (kbd "C-x C-;") 'phpcbf)
;;(add-hook 'php-mode-hook 'phpcbf-enable-on-save)

;; ES6/JSX (https://gist.github.com/CodyReichert/9dbc8bd2a104780b64891d8736682cea)
(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlist)))
;; Enable eslint checker for web-mode
(flycheck-add-mode 'javascript-eslint 'web-mode)
;; Enable flycheck globally
(add-hook 'after-init-hook #'global-flycheck-mode)
(prelude-require-package 'add-node-modules-path)
(add-hook 'flycheck-mode-hook 'add-node-modules-path)

;;; preferences.el ends here
