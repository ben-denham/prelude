;;; ben/key-bindings.el -- summary

;;; Commentary:
;; My custom key bindings.

;;; Code:

(global-set-key [M-+] 'menu-bar-open)

;; Add key-binding to spit open-scad code from clojure repl into
;; repl.scad.

(defun spit-scad-last-expression ()
  (interactive)
  (cider-interactive-eval
   (format
    "(require 'scad-clj.scad)
     (spit \"repl.scad\"
           (scad-clj.scad/write-scad %s))"
    (cider-last-sexp))))

(require 'cider-mode)
(define-key cider-mode-map
  (kbd "C-x C-g") 'spit-scad-last-expression)

;;; key-bindings.el ends here
