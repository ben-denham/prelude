;;; package -- summary

;;; Commentary:
;; This is some commentary.

;;; Code:
;; This is some code.

;; Custom key bindings
(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)
(global-set-key [f5] 'revert-buffer)
(global-set-key [f6] 'goto-line)
(global-set-key [f7] 'goto-line)
(global-set-key [C-tab] '(lambda () (interactive) (switch-to-buffer (other-buffer))))

;;; custom-key-bindings.el ends here
