;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; Tab
;;
(defun my-c-common-mode ()
  "my C, C++ mode setup function."
  (setq tab-width 4))


;;
;; helm-gtags-mode
;;
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

;;
;;
;;
(add-hook 'c-mode-hook 'my-c-common-mode)
(add-hook 'c++-mode-hook 'my-c-common-mode)

