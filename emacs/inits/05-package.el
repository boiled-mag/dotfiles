;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;=======================================================================
;; for El-Get configurations.
;;=======================================================================
;; 下記のサイトを参考に設定.
;; http://tarao.hatenablog.com/entry/20150221/1424518030
;;
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle auto-complete)
(el-get-bundle cmake-mode)
(el-get-bundle color-theme)
(el-get-bundle eldoc-extension)
(el-get-bundle flycheck)
(el-get-bundle helm)
(el-get-bundle helm-gtags)
(el-get-bundle yasnippet)
(el-get-bundle highlight-symbol)

;;; Rust
(el-get-bundle rust-mode)
(el-get-bundle racer-rust/emacs-racer
  :name racer
  :depends (rust-mode dash s f))
(el-get-bundle flycheck/flycheck-rust)
