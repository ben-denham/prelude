;;; Loads the correct user profile based on the custom-profile variable.


;;; code:

;; load the profile settings
(let ((custom-profile-dir (expand-file-name custom-profile prelude-personal-dir)))
  (when (file-exists-p custom-profile-dir)
    (message "Loading profile configuration files in %s..." custom-profile-dir)
    (mapc 'load (directory-files custom-profile-dir 't "^[^#].*el$"))))
