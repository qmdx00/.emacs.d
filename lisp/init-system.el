;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; System config
;;

;; custom file config
(setq custom-file
      (expand-file-name
       (concat user-emacs-directory "custom.el")))

;; load custom file
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load-file custom-file)

;; performance
(when (display-graphic-p)
  (tool-bar-mode 0)
  (scroll-bar-mode 0))
(menu-bar-mode 0)

;; auto save and backup
(setq create-lockfiles nil
      make-backup-files nil
      auto-save-default nil)

;; yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; global modes
(electric-pair-mode t)
(global-hl-line-mode t)
(global-display-line-numbers-mode t)


(provide 'init-system)
