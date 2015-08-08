;;; package -- summary

;;; Commentary:
;; This is some commentary.

;;; Code:
;; This is some code.

;; custom modes in base path
;; @todo
;;(add-to-list 'load-path "~/.emacs.d/personal/dieuwe/elisp")

;; @todo
;;(prelude-require-packages '(solarized-theme column-marker whitespace))

;; @todo
;; dart-mode
;;(add-to-list 'load-path "~/elisp/dart-mode")
;;(require 'dart-mode)
;;(add-to-list 'auto-mode-alist '("\\.dart$" . dart-mode))

;; overwrite
;;(delete-selection-mode t)

;; JS indent
;;(setq-default js-indent-level 2)

;; Auto-save
(setq-default auto-save-default nil)

;; JS2 Config
(setq-default js2-strict-missing-semi-warning nil)
(setq-default js2-missing-semi-one-line-override t)
(setq-default js2-strict-trailing-comma-warning nil)

;; @todo
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Column markers
;;(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 80)))
;;(add-hook 'web-mode-hook (lambda () (interactive) (column-marker-1 80)))
;;(add-hook 'drupal-mode-hook (lambda () (interactive) (column-marker-1 80)))
;;(add-hook 'javascript-mode-hook (lambda () (interactive) (column-marker-1 80)))

;; Whitespace mode
;;(require 'whitespace)
;;(setq whitespace-style '(face empty tabs lines-tail trailing))
;;(global-whitespace-mode t)

;;; personal.el ends here
