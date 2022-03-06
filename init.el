;; packagerepository
(require 'package)
(setq package-archives '(
  ("gnu"   . "http://elpa.emacs-china.org/gnu/")
  ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)

;; bootstrapuse-package
(unless 
    (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; load evil
(use-package evil
  :demand t
  :ensure t
  :config (evil-mode 1))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
