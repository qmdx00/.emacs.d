;;; early-init.el -*- lexical-binding: t; -*-

(setq crafted-package-perform-stale-archive-check nil)
(setq native-comp-async-report-warnings-errors nil)

(load
 (expand-file-name
  (concat user-emacs-directory "crafted-emacs/modules/crafted-early-init-config")))

;;; _
(provide 'early-init)
;;; early-init.el ends here


