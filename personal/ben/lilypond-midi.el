;;; ben/lilypond-midi.el -- summary

;;; Commentary:
;; Key-bindings for MIDI input for lilypond-mode.

;;; Code:

(defvar midi-record nil
  "Whether the sustain pedal is pressed to start entering key-input.")

;; TODO: Interactive command to set scale (via root note and scale
;; type), which then determines notes so that the right "sharp" or
;; "flat" notation is used for the given key.
(defvar notes '("c" "cis" "d" "dis" "e" "f" "fis" "g" "gis" "a" "ais" "b"))

(defun midi-on (event)
  (interactive "e")
  (when midi-record
    (let* ((payload (car (cdr event)))
           (note (car (nth 2 payload)))
           (index (mod note 12)))
      (insert (concat (nth index notes) " ")))))

(defun midi-off (event)
  (interactive "e"))

(defun midi-cc (event)
  (interactive "e")
  (let* ((payload (car (cdr event)))
         (values (nth 2 payload))
         (key (car values))
         (value (cdr values)))
    (when (eq key 64)
      (setq midi-record (>= value 64)))))

(require 'lilypond-mode)
(define-key LilyPond-mode-map (kbd "<Ch1> <NOTE_ON>") 'midi-on)
(define-key LilyPond-mode-map (kbd "<Ch1> <NOTE_OFF>") 'midi-off)
(define-key LilyPond-mode-map (kbd "<Ch1> <CONTROL_CHANGE>") 'midi-cc)

;;; lilypond-midi.el ends here
