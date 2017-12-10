;;; personal/dieuwe/preferences.el -- summary

;;; Commentary:
;; Personal preferences for Dieuwe.

;;; Code:

;; Stop 'smartparens-mode' from working as there is no known way to
;; disable it. See https://emacs.stackexchange.com/questions/3779.
(advice-add #'smartparens-mode :before-until (lambda (&rest args) t))

;; Auto-save.
(setq-default auto-save-default nil)

;; Suppress some JS2 strict warnings.
(setq-default js2-strict-missing-semi-warning nil)
(setq-default js2-missing-semi-one-line-override t)
(setq-default js2-strict-trailing-comma-warning nil)

;; @todo What was this again?
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; @todo What was this again?
(when (fboundp 'adaptive-wrap-prefix-mode)
  (defun my-activate-adaptive-wrap-prefix-mode ()
    "Toggle `visual-line-mode' and `adaptive-ve-wrap-prefix-mode' simultaneously."
    (adaptive-wrap-prefix-mode (if visual-line-mode 1 -1)))
  (add-hook 'visual-line-mode-hook 'my-activate-adaptive-wrap-prefix-mode))

;; Enable Global Visual Line mode.
;;(global-visual-line-mode t)
;; Only enable visual line mode for text based editing.
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; Unbind orgmode C-tab binding (which we use for something else)
(add-hook 'org-mode-hook
          '(lambda ()
             (define-key org-mode-map [(control tab)] nil)))

;; Load direx to use instead of dired.
(prelude-require-package 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

;; PHP hook to indent 2 spaces.
(add-hook 'php-mode-hook 'my-php-mode-hook)
(defun my-php-mode-hook ()
  "My PHP mode configuration."
  (setq indent-tabs-mode nil
        tab-width 2
        c-basic-offset 2))

;;; preferences.el ends here
