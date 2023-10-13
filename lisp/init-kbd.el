;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Keybindings
;;

;; hydra
(use-package hydra)

;; frame
(defhydra hydra-frame (:exit t)
  "Emacs Frame Management."
  ("f" other-frame "other frame")
  ("d" delete-frame "delete frame")
  ("n" make-frame-command "new frame")
  ("t" tear-off-window "tearoff window"))

;; search
(defhydra hydra-search (:exit t)
  "Emacs Search Keys"
  ("s" swiper "search buffer")
  ("g" counsel-git-grep "search git project")
  ("d" counsel-rg "serach directory"))

;; global kbd
(let ((keybindings-alist
       '(("C-c f" . hydra-frame/body)
         ("C-c s" . hydra-search/body)
         ("M-x" . counsel-M-x)
         ("M-n" . switch-to-next-buffer)
         ("M-p" . switch-to-prev-buffer)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-SPC" . mc/mark-all-like-this))))
  (dolist (item keybindings-alist)
    (global-set-key (kbd (car item)) (cdr item))))

;; graphic global kbd
(let ((graphic-keybindings-alist
       '(("s-b" . switch-to-buffer)
         ("s-<return>" . toggle-frame-fullscreen)
         ("s-r" . restart-emacs)
         ("s-<mouse-1>" . xref-find-definitions-at-mouse)
         ("s-<mouse-3>" . xref-find-references-at-mouse))))
  (dolist (item graphic-keybindings-alist)
    (when (display-graphic-p)
      (global-set-key (kbd (car item)) (cdr item)))))


(provide 'init-kbd)
