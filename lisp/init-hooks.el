;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Mode hooks
;;

(add-hook 'emacs-startup-hook 'editorconfig-mode)

(add-hook 'prog-mode-hook 'format-all-mode)

(provide 'init-hooks)
