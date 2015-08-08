;;; common/key-bindings.el -- summary

;;; Commentary:
;; My custom key bindings.

;;; Code:

;; Comments
(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)

;; Buffer revert
(global-set-key [f5] 'revert-buffer)

;; Goto line
(global-set-key [f7] 'goto-line)

;; Toggle buffer
(global-set-key [C-tab] '(lambda ()
                           (interactive)
                           (switch-to-buffer (other-buffer))))

;;; key-bindings.el ends here
