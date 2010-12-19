
(setq-default fill-column 79)

; Indentation
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(setq-default python-indent 2)

; Spaces, not tabs
(setq-default indent-tabs-mode nil)

(prefer-coding-system 'utf-8)

; I hate CUA mode
(setq cua-enable-cua-keys nil)


; Don't litter ~ files
(setq backup-directory-alist
      `(,(cons "." (concat user-emacs-directory "auto-backup-files/"))))
(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "auto-save-files/") t)))
