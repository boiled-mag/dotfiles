;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; company.elを使用するようにするため, auto-complete.elは無効にする.
;;
;; (require 'auto-complete)
;; (require 'auto-complete-config)

;; (global-auto-complete-mode t)

;; (ac-config-default)

;; ;; 任意のタイミングで補完候補が出るようにM-Tabにキー割り当て.
;; (global ac-complete-mode-map "\M-TAB" 'ac-next)

;; ;; 補完候補が出たときにC-n, C-pで上下移動ができるようにする.
;; (define-key ac-complete-mode-map "\C-n" 'ac-next)
;; (define-key ac-complete-mode-map "\C-p" 'ac-previous)
