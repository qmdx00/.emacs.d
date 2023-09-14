;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; IDE settings
;;

;; ivy
(use-package ivy
  :diminish ivy-mode
  :hook (after-init . ivy-mode))

;; counsel
(use-package counsel
  :after ivy
  :config (counsel-mode))

;; swiper
(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))

;; shell env
(use-package exec-path-from-shell
  :init (setq exec-path-from-shell-variables '("PATH" "MANPATH" "GOPATH" "LANG"))
  :hook (after-init . exec-path-from-shell-initialize))

;; editorconfig support
(use-package editorconfig)

;; format
(use-package format-all)

;; go mode
(use-package go-mode)

;; slime
(use-package slime
  :config (setq inferior-lisp-program "sbcl"))

;; eglot
(use-package eglot
  :hook ((go-mode) . eglot-ensure)
  :bind (("s-l" . eglot-format)))

(provide 'init-ide)
