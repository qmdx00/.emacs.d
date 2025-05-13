;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;

(if (display-graphic-p)
    (exec-path-from-shell-initialize))

(if (locate-library "doom-themes")
    (doom-themes-visual-bell-config))

;;; _
(provide 'customize-packages-config)
;;; customize-config.el ends here
