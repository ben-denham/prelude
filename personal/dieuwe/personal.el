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

;; Tabbing
(setq-default indent-tabs-mode nil) ;; never use tab character
(setq-default tab-width 2) ;; tab at 2 spaces
(setq-default indent-line-function 'insert-tab)
(setq-default js2-basic-offset 2)
(setq-default js2-bounce-indent-p t)
(setq-default web-mode-markup-indent-offset 2)
(setq-default css-indent-offset 2)
(setq-default web-mode-code-indent-offset 2)
(setq-default web-mode-css-indent-offset 2)

;; JS2 Config
(setq-default js2-strict-missing-semi-warning nil)
(setq-default js2-missing-semi-one-line-override t)
(setq-default js2-strict-trailing-comma-warning nil)

;; save desktop when idle
(run-with-idle-timer 300 t 'desktop-save-in-desktop-dir)

;; @todo
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; No scroll bar
(scroll-bar-mode -1)
;; No tool bar
(tool-bar-mode -1)
;; Override predule by showing menu.
(menu-bar-mode t)

;; Column markers
;;(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 80)))
;;(add-hook 'web-mode-hook (lambda () (interactive) (column-marker-1 80)))
;;(add-hook 'drupal-mode-hook (lambda () (interactive) (column-marker-1 80)))
;;(add-hook 'javascript-mode-hook (lambda () (interactive) (column-marker-1 80)))

;; Line numbers
(global-linum-mode t)

;; Whitespace mode
;;(require 'whitespace)
;;(setq whitespace-style '(face empty tabs lines-tail trailing))
;;(global-whitespace-mode t)

;; Active follow mouse
(setq mouse-autoselect-window t)

;;; dieuwe.el ends here
