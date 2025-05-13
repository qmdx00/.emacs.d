;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;

;;; Bootstrap
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))

(when (and custom-file
           (file-exists-p custom-file))
  (load custom-file nil :nomessage))

(load
 (expand-file-name
  (concat user-emacs-directory "crafted-emacs/modules/crafted-init-config")))

(add-to-list 'load-path 
 (expand-file-name
  (concat user-emacs-directory "lisp")))

;;; Package phase
(require 'crafted-completion-packages)
(require 'crafted-ide-packages)
(require 'crafted-workspaces-packages)
(require 'crafted-ui-packages)
(require 'crafted-screencast-packages)
(require 'crafted-org-packages)
(require 'crafted-lisp-packages)
(require 'crafted-evil-packages)
(require 'customize-packages)

;;; Install packages
(package-install-selected-packages :noconfirm)

;;; Configuration phase
(require 'crafted-defaults-config)
(require 'crafted-startup-config)
(require 'crafted-updates-config)
(require 'crafted-osx-config)
(require 'crafted-speedbar-config)
(require 'customize-packages-config)

;; Packages config
(require 'crafted-completion-config)
(require 'crafted-ide-config)
(require 'crafted-workspaces-config)
(require 'crafted-ui-config)
(require 'crafted-screencast-config)
(require 'crafted-org-config)
(require 'crafted-lisp-config)
(require 'crafted-evil-config)

;; Customize settings
(require 'customize-set-variables)
(require 'customize-call-functions)

;;; _
(provide 'init)
;;; init.el ends here

