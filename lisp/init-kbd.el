;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Keybindings
;;

(use-package hydra)

(global-set-key (kbd "C-c f") 'hydra-frame/body)

(defhydra hydra-frame (:exit t)
  "Emacs Frame Management."
  ("f" other-frame "other frame")
  ("d" delete-frame "delete frame")
  ("n" make-frame-command "new frame"))

;; graphic keybindings
(when (display-graphic-p)
  (global-set-key (kbd "s-b") 'switch-to-buffer)
  (global-set-key (kbd "s-<return>") 'toggle-frame-fullscreen))

(provide 'init-kbd)
