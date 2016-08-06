;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; for El-Get configurations.
;;
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


(el-get-bundle! auto-complete)
(el-get-bundle! helm)
(el-get-bundle! color-theme)
(el-get-bundle! eldoc-extension)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; MELPA
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
