;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;

;; tree-sitter
(crafted-ide-eglot-auto-ensure-all)
(crafted-ide-configure-tree-sitter '(go gomod commonlisp javascript html python))
(crafted-osx-transparent-titlebar)

;; setting theme
(when (display-graphic-p)
  (load-theme 'wombat t))

;;; _
(provide 'customize-call-functions)
;;; customize-call-functions.el ends here
