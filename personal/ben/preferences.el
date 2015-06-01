;;; ben/preferences.el -- summary

;;; Commentary:
;; My personal preferences.

;;; Code:

;; Save and load desktop on start
(setq desktop-save-mode t)

;; Indentation
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq-default indent-tabs-mode nil)
;; (setq js-indent-level tab-width)

;; js indentation
(custom-set-variables
 '(js2-basic-offset tab-width)
 '(js2-bounce-indent-p nil))

;; See: http://www.emacswiki.org/emacs/IndentationBasics


;;; preferences.el ends here
