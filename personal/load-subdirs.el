;;; Loads the correct user profile based on the custom-profile variable.


;;; code:

;; load subdirectories of configuration.
(mapc (lambda (dir-name) (let ((subdir (expand-file-name dir-name prelude-personal-dir)))
                           (when (file-exists-p subdir)
                             (message "Loading configuration files in %s..." subdir)
                             (mapc 'load (directory-files subdir 't "^[^#].*el$")))))
      (list "common" custom-profile))
