;;; common/bookmarks.el -- summary

;;; Commentary:
;; Bookmarks configuration.

;;; Code:

(prelude-require-package 'bm)

(require 'bm)

;; Load bookmarks when starting emacs.
(setq bm-restore-repository-on-load t)

;; Key-bindings
(global-set-key (kbd "<C-f9>") 'bm-toggle)
(global-set-key (kbd "<f9>")   'bm-next)
(global-set-key (kbd "<f10>")  'bm-previous)

;;; bookmarks.el ends here
