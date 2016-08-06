;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; color-theme
;;
(when (require 'color-theme)
  (color-theme-initialize)
  (color-theme-deep-blue))   ; default

;; ウィンドウを透明にする
;; アクティブウィンドウ／非アクティブウィンドウ（alphaの値で透明度を指定）
(add-to-list 'default-frame-alist '(alpha . (0.95 0.95)))

