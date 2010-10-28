
(require 'java-mode-indent-annotations)
(defun my-java-hook ()
  (java-mode-indent-annotations-setup)
  (setq c-basic-offset 4))
(add-hook 'java-mode-hook 'my-java-hook)