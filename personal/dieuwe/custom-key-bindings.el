;;; dieuwe/custom-key-bindings.el -- summary

;;; Commentary:
;; This is some commentary.

;;; Code:

;; Custom key bindings
(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)
(global-set-key [f5] 'revert-buffer)
(global-set-key [f6] 'goto-line)
(global-set-key [f7] 'goto-line)
(global-set-key [C-tab] '(lambda () (interactive) (switch-to-buffer (other-buffer))))

;; Some key binding changes.
(global-unset-key (vector (list 'shift 'left)))
(global-unset-key (vector (list 'shift 'right)))
(global-unset-key (vector (list 'shift 'up)))
(global-unset-key (vector (list 'shift 'down)))

;;(setq-default shift-selection-mode t)

;;; custom-key-bindings.el ends here
