;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; yasnippet
;;
(use-package yasnippet
  :ensure t
  :pin melpa
  :diminish yas-minor-mode
  :init
  (yas-global-mode t))

;; M-x yas-describe-tablesでTABで展開可能なテンプレートの一覧を表示することができる.

