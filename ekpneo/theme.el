
(add-to-list 'load-path "~/.emacs.d/vendor/color-theme")

(require 'color-theme)
(setq color-theme-is-global nil)

(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
(fset 'current-color-theme 'color-theme-twilight)

(defun frame-set-theme (frame &optional global)
  (let ((color-theme-is-global global))
    (select-frame frame)
    (if (not (window-system))
        (if (> (display-color-cells) 16)
            (current-color-theme))
      (current-color-theme))))

(add-hook 'after-make-frame-functions 'frame-set-theme)
(frame-set-theme (selected-frame) (not window-system))
