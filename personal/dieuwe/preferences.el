;;; personal/dieuwe/preferences.el -- summary

;;; Commentary:
;; Personal preferences for Dieuwe.

;;; Code:

;; Stop 'smartparens-mode' from working as there is no known way to
;; disable it. See https://emacs.stackexchange.com/questions/3779.
(advice-add #'smartparens-mode :before-until (lambda (&rest args) t))

;; Auto-save
(setq-default auto-save-default nil)

;; Suppress some JS2 strict warnings
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

;;; preferences.el ends here
