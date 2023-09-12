;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Mode hooks
;;

(add-hook 'emacs-startup-hook 'editorconfig-mode)

(add-hook 'prog-mode-hook 'format-all-mode)

(add-hook 'emacs-lisp-mode-hook 'electric-indent-mode)

(provide 'init-hooks)
