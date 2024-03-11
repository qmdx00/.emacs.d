;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Package Initialize
;;

(require 'package)

;; (setq package-archives
;;       '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;; 	("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")
	("nongnu" . "https://elpa.nongnu.org/nongnu/")))

(when (< emacs-major-version 27)
  (package-initialize))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package use-package
  :config (setq use-package-always-ensure t))

(provide 'init-package)
