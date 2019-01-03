;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; テーマ設定
;;
;; themeフレームワークで書き直されたものをもとに, 色が重複している部分など少し手直し.
(use-package color-theme-modern
  :ensure t
  :config
  (setq custom-theme-directory (expand-file-name "custom-themes" user-emacs-directory))
  (load-theme 'custom-charcoal-black t t)
  (enable-theme 'custom-charcoal-black))

;;
;; doom-themes
;;
;; (when (require 'doom-themes nil t)
;;   ;;
;;   (load-theme 'doom-vibrant t)
;;   ;; Enable flashing mode-line on errors
;;   (doom-themes-visual-bell-config)
;;   ;; Enable custom neotree theme
;;   (doom-themes-neotree-config))
