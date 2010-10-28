;; Common functions

; Is the current frame a GUI window
(defun frame-is-gui-p ()
  (let ((frame-type (framep (selected-frame))))
    (or (equal frame-type 'x)
	(equal frame-type 'ns))))

; Insert the date as YYYY-MM-DD
(defun insert-date ()
  (interactive)
  (let ((format "%Y-%m-%d"))
    (insert (format-time-string format))))

; Underline the current line with '-'
; Use C-u <binding> to underline with '=' instead
(defun underline-line (prefix)
  (interactive "P")
  (let ((underline-char (cond
			 ((not prefix) ?-)
			 ((equal prefix '(4)) ?=)))
	(num-chars (progn
		     (end-of-line)
		     (current-column))))
    (progn
      (newline)
      (insert-char underline-char num-chars)
      (newline))))
