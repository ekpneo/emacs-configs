(require 'color-theme)

(setq color-theme-is-global nil)

(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")

(defun frame-set-theme (frame)
  (select-frame frame)
  (if (not window-system)
      (if (> (display-color-cells) 16)
          (color-theme-twilight))
    (progn 
      (message "x")
      (color-theme-twilight))))

(add-hook 'after-make-frame-functions 'frame-set-theme)
(frame-set-theme (selected-frame))