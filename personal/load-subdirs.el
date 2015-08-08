;;; personal/load-subdirs.el -- summary

;;; Commentary:
;; Loads the 'common' directory along with the correct user profile
;; based on the 'custom-profile' variable that should be set in a
;; user's prelude-modules.el file.

;;; Code:

;; Load sub directories of configuration.
(mapc (lambda (dir-name) (let ((subdir (expand-file-name dir-name prelude-personal-dir)))
                           (when (file-exists-p subdir)
                             (message "Loading configuration files in %s..." subdir)
                             (mapc 'load (directory-files subdir 't "^[^#].*el$")))))
      (list "common" custom-profile))

;;; load-subdirs.el ends here
