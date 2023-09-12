;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;

;; add to load path
(add-to-list 'load-path
	     (expand-file-name
	      (concat user-emacs-directory "lisp")))


;; load files
(require 'init-system)
(require 'init-package)
(require 'init-proxy)
(require 'init-kbd)
(require 'init-ui)
(require 'init-ide)
(require 'init-hooks)
