;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(package-initialize)

;;
;; init-loader.el
;;
;; 設定ファイルはinits以下に置いていて, init-loaderによって読み込まれる.
;; M-x init-load-show-logにてinit-loaderの動作を確認できる.
(require 'init-loader)
(setq-default init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
