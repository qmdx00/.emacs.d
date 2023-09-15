;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Keybindings
;;

;; hydra
(use-package hydra)

;; hydra kbd
(global-set-key (kbd "C-c f") 'hydra-frame/body)

(defhydra hydra-frame (:exit t)
  "Emacs Frame Management."
  ("f" other-frame "other frame")
  ("d" delete-frame "delete frame")
  ("n" make-frame-command "new frame"))

;; graphic kbd
(when (display-graphic-p)
  (global-set-key (kbd "s-b") 'switch-to-buffer)
  (global-set-key (kbd "s-<return>") 'toggle-frame-fullscreen)
  (global-set-key (kbd "s-<mouse-1>") 'xref-find-definitions-at-mouse)
  (global-set-key (kbd "s-<mouse-3>") 'xref-find-references-at-mouse))

;; global kdb
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "M-n") 'switch-to-next-buffer)
(global-set-key (kbd "M-p") 'switch-to-prev-buffer)

(provide 'init-kbd)
