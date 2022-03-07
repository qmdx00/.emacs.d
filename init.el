;; package repository
(require 'package)
(setq package-archives '(
  ("gnu"   . "http://elpa.emacs-china.org/gnu/")
  ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)

;; custom config
(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

;; bootstrap use-package
(unless 
  (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; load evil
(use-package evil
  :demand t
  :config (evil-mode 1))

;; load ivy
(use-package ivy
  :config (ivy-mode 1))

;; load company
(use-package company
  :hook (after-init . global-company-mode)
  :config
  (setq company-tooltip-align-annotations t 
        company-tooltip-limit 20           
        company-show-numbers t            
        company-idle-delay .2            
        company-minimum-prefix-length 1 
        ))

;; load projectile
(use-package projectile
  :config (projectile-mode 1)
  :bind (:map project-command-map
	      ("C-c p" . projectile-command-map)))

;; load magit
(use-package magit
	    :bind (("C-x g" . magit-status)
		   ("C-x C-g" . magit-status)))

