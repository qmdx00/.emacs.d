;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; IDE settings
;;

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

;; eglot
(use-package eglot
  :hook ((go-mode) . eglot-ensure)
  :bind (("s-l" . eglot-format)))

(provide 'init-ide)
