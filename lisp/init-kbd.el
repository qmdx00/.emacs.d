;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Keybindings
;;

;; hydra
(use-package hydra)

;; hydra kbd
(global-set-key (kbd "C-c f") 'hydra-frame/body)
(global-set-key (kbd "C-c s") 'hydra-search/body)

;; keybindings
(defhydra hydra-frame (:exit t)
  "Emacs Frame Management."
  ("f" other-frame "other frame")
  ("d" delete-frame "delete frame")
  ("n" make-frame-command "new frame")
  ("t" tear-off-window "tearoff window"))

(defhydra hydra-search (:exit t)
  "Emacs Search Keys"
  ("s" swiper "search buffer")
  ("g" counsel-git-grep "search git project")
  ("d" counsel-rg "serach directory"))

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
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-SPC") 'mc/mark-all-like-this)

(provide 'init-kbd)
