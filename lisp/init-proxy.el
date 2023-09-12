;; -*- lexical-binding: t -*-
;; -*- coding: utf-8 -*-
;;
;; Local proxy settings
;;

(defgroup proxy nil
  "Local Proxy Customization."
  :group'convenience)

(defcustom local-proxy "127.0.0.1:1086"
  "Set local proxy."
  :group'proxy
  :type'string)

(defun show-local-proxy ()
  "Show Local Proxy."
  (interactive)
  (if (bound-and-true-p url-proxy-services)
      (message "Current proxy is %s" local-proxy)
    (message "No Proxy")))

(defun enable-local-proxy ()
  "Enable Local Proxy."
  (interactive)
  (setq url-proxy-services
	`(("http" . ,local-proxy)
	  ("https" . ,local-proxy)
	  ("no_proxy" . "^\\(localhost\\|192.168.*\\|10.*\\)")))
  (show-local-proxy))

(defun disable-local-proxy ()
  "Disable Local Proxy."
  (interactive)
  (setq url-proxy-services nil)
  (show-local-proxy))

(defun toggle-local-proxy ()
  "Toggle Local Proxy."
  (interactive)
  (if (bound-and-true-p url-proxy-services)
      (disable-local-proxy)
    (enable-local-proxy)))

(provide 'init-proxy)
