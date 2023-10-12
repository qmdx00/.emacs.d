;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Tools
;;

;; rss client
(use-package elfeed
  :config
  (setq elfeed-db-directory (expand-file-name "elfeed" user-emacs-directory)
	elfeed-show-entry-switch 'display-buffer))

(provide 'init-tool)
