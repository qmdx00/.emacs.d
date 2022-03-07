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

