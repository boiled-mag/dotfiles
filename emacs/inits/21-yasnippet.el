;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; yasnippet
;;
(when (require 'yasnippet nil t)
  (with-eval-after-load 'yasnippet
    (yas-global-mode 1)))

;;
;; M-x yas-describe-tablesでTABで展開可能なテンプレートの一覧を表示することができる.
;;
