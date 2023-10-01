;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; IDE settings
;;

;; ripgrep
(use-package rg)

;; ivy
(use-package ivy
  :diminish ivy-mode
  :init (ivy-mode))

;; counsel
(use-package counsel
  :after ivy
  :init (counsel-mode))

;; swiper
(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))

;; ivy posframe
(use-package ivy-posframe
  :after ivy
  :init (ivy-posframe-mode)
  :config
  (setq ivy-posframe-parameters
	'((left-fringe . 1)
	  (right-fringe . 1)))
  (setq ivy-posframe-width 120
	ivy-posframe-border-width 10)
  (setq ivy-posframe-display-functions-alist
        '((swiper          . ivy-posframe-display-at-window-center)
          (complete-symbol . ivy-posframe-display-at-point)
          (counsel-M-x     . ivy-posframe-display-at-frame-center)
          (t               . ivy-posframe-display-at-frame-center))))



;; ace window
(use-package ace-window
  :bind (("C-x o" . ace-window)))

;; avy
(use-package avy
  :bind (("C-'" . avy-goto-char-2)))

;; paredit
;; https://q3yi.me/post/7_a-more-natural-keybinding-setting-in-paredit/
(use-package paredit
  :bind (:map paredit-mode-map
	      ("M-<up>" . 'paredit-splice-sexp)
	      ("M-<down>" . 'paredit-wrap-round)
	      ("M-<left>" . 'paredit-forward-barf-sexp)
	      ("M-<right>" . 'paredit-backward-barf-sexp)
	      ("C-<left>" . 'paredit-backward-slurp-sexp)
	      ("C-<right>" . 'paredit-forward-slurp-sexp))
  :hook (((lisp-mode emacs-lisp-mode) . paredit-mode)))

;; company
(use-package company
  :init (global-company-mode)
  :config (setq company-dabbrev-downcase nil))

;; shell env
(use-package exec-path-from-shell
  :init (setq exec-path-from-shell-variables '("PATH" "MANPATH" "GOPATH" "LANG"))
  :hook (after-init . exec-path-from-shell-initialize))

;; editorconfig
(use-package editorconfig)

;; format
(use-package format-all)

;; markdown
(use-package markdown-mode)

;; go mode
(use-package go-mode)

;; slime
(use-package slime
  :hook (slime-repl-mode . paredit-mode)
  :config
  (setq inferior-lisp-program "sbcl")
  (slime-setup '(slime-fancy slime-company)))

;; slime company
(use-package slime-company
  :after (slime company)
  :config (setq slime-company-completion 'fuzzy))

;; eglot
(use-package eglot
  :hook ((go-mode) . eglot-ensure)
  :bind (("s-l" . eglot-format)))

;; magit
(use-package magit)

;; git diff
(use-package diff-hl
  :hook (emacs-startup . (lambda ()
			   (when (display-graphic-p)
			     (global-diff-hl-show-hunk-mouse-mode))
			   (global-diff-hl-mode)))
  :hook (diff-hl-mode . diff-hl-margin-mode)
  :hook (diff-hl-mode . diff-hl-flydiff-mode))

(provide 'init-ide)
