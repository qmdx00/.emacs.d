;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; UI config
;;

;; theme
(use-package zerodark-theme
  :init (load-theme 'zerodark t))

;; font face
(use-package fontaine
  :config (setq fontaine-presets
		'((regular :default-height 130)
		  (t :default-family "Jetbrains Mono")))
  (when (display-graphic-p)
    (fontaine-set-preset
     (or (fontaine-restore-latest-preset) 'regular))
    (add-hook 'kill-emacs-hook #'fontaine-store-latest-preset)))

;; rainbow delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'init-ui)
