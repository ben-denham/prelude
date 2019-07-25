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

(require 'octave)
(define-key octave-mode-map
  (kbd "C-c C-j") 'octave-send-line)
(define-key octave-mode-map
  (kbd "C-c C-k") 'octave-send-defun)

(defun unfill-region (beg end)
  "Unfill the region, joining text paragraphs into a single
    logical line.  This is useful, e.g., for use with
    `visual-line-mode'."
  (interactive "*r")
  (let ((fill-column (point-max)))
    (fill-region beg end)))

;; Handy key definition
(define-key global-map "\C-\M-Q" 'unfill-region)

;;; key-bindings.el ends here
