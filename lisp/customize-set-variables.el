;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;

;; Customize settings

;; emacs backup setting
(customize-set-variable 'backup-directory-alist '(("." . "~/.emacs.d/backup")))

;; mode disabled
(customize-set-variable 'menu-bar-mode nil)
(customize-set-variable 'flymake-start-on-flymake-mode nil)

;; variables setting
(customize-set-variable 'crafted-startup-graphical-logo "ascii")
(customize-set-variable 'crafted-startup-terminal-logo nil)
(customize-set-variable 'crafted-startup-module-list '(crafted-startup-projects crafted-startup-recentf))
(customize-set-variable 'crafted-startup-recentf-count 5)
(customize-set-variable 'crafted-ui-display-line-numbers t)
(customize-set-variable 'corfu-auto-delay 0.25)
(customize-set-variable 'eldoc-echo-area-use-multiline-p 3)
(customize-set-variable 'eldoc-echo-area-display-truncation-message nil)

;; other settings
(fset 'yes-or-no-p 'y-or-n-p)
(set-frame-font "Jetbrains Mono" nil t)

(when (locate-library "sly")
  (setq inferior-lisp-program "ros -Q run"))

;;; _
(provide 'customize-set-variables)
;;; customize-set-variables.el ends here
