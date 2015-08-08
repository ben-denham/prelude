;;; common/preferences.el -- summary

;;; Commentary:
;; Common preferences.

;;; Code:

;; Save and load desktop on start
(custom-set-variables
 '(desktop-save-mode t))

;; Indentation
(setq-default indent-tabs-mode nil) ;; never use tab character
(setq tab-width 2) ;; tab at 2 spaces

(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; js indentation
(custom-set-variables
 '(js2-basic-offset tab-width)
 '(js2-bounce-indent-p nil)
 '(web-mode-markup-indent-offset tab-width)
 '(css-indent-offset tab-width)
 '(web-mode-code-indent-offset tab-width)
 '(web-mode-css-indent-offset tab-width))

;; See: http://www.emacswiki.org/emacs/IndentationBasics

;; No scroll bar
(scroll-bar-mode -1)
;; Override predule by showing menu.
(menu-bar-mode t)

;; Active follow mouse
(setq mouse-autoselect-window t)

;; save desktop when idle
(run-with-idle-timer 300 t 'desktop-save-in-desktop-dir)

;;; preferences.el ends here
