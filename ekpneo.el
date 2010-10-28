(add-to-list 'load-path "~/.emacs.d/vendor")

(load "ekpneo/global")
(load "ekpneo/functions")
(load "ekpneo/hashapass")
(load "ekpneo/keybindings")
(load "ekpneo/modes")

; Load GUI-only code
(when (frame-is-gui-p)
  (load "ekpneo/theme"))

; Start the emacs server for terminal goodness
(server-start)