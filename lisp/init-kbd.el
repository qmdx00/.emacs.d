;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Keybindings
;;

(use-package hydra)

;; graphic keybindings
(when (display-graphic-p)
  (global-set-key (kbd "s-b") 'switch-to-buffer)
  (global-set-key (kbd "s-<return>") 'toggle-frame-fullscreen))

(provide 'init-kbd)
