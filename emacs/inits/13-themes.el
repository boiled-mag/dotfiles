;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; テーマ設定
;;
;; load-themeで指定しているテーマはどれか一つを有効にする.

;; custom-charcoal-blackテーマについては, themeフレームワークで書き直されたものをもとに,
;; 色が重複して見づらい部分など少し手直し.
(use-package color-theme-modern
  :ensure t
  :config
  (setq custom-theme-directory (expand-file-name "custom-themes" user-emacs-directory))
  ;; メインで使用しているテーマ
  (progn (load-theme 'custom-charcoal-black t t) (enable-theme 'custom-charcoal-black))    ; dark (favorite)
;  (progn (load-theme 'greiner t t) (enable-theme 'greiner))                                ; light (favorite)
;  (progn (load-theme 'marquardt t t) (enable-theme 'marquardt))                            ; light
;  (progn (load-theme 'xp t t) (enable-theme 'xp))                                          ; light
;  (progn (load-theme 'emacs-nw t t) (enable-theme 'emacs-nw))                              ; light
;  (progn (load-theme 'katester t t) (enable-theme 'katester))                              ; light
  )

;;
;; Dark Themes
;;

;;
;; Foggy Night Theme
;;
(use-package foggy-night-theme
  :disabled t
  :ensure t
  :config
  (progn (load-theme 'foggy-night t t) (enable-theme 'foggy-night)))

;;
;; Grand Shell Theme
;;
(use-package grandshell-theme
  :disabled t
  :ensure t
  :config
  (progn (load-theme 'grandshell t t) (enable-theme 'grandshell)))

;;
;; Kooten Theme
;;
(use-package kooten-theme
  :disabled t
  :ensure t
  :config
  (progn (load-theme 'kooten t t) (enable-theme 'kooten)))

;;
;; Labburn Theme
;;
(use-package labburn-theme
  :disabled t
  :ensure t
  :config
  (progn (load-theme 'labburn t t) (enable-theme 'labburn)))

;;
;; Peacock Theme
;;
(use-package peacock-theme
  :disabled t
  :ensure t
  :config
  (progn (load-theme 'peacock t t) (enable-theme 'peacock)))

;;
;; Light Themes
;;

;;
;; Professional Theme
;;
(use-package professional-theme
  :disabled t
  :ensure t
  :config
  (progn (load-theme 'professional t t) (enable-theme 'professional)))

;;
;; White Sand Theme
;;
(use-package white-sand-theme
  :disabled t
  :ensure t
  :config
  (progn (load-theme 'white-sand t t) (enable-theme 'white-sand)))

;;
;; avk-daylight
;;
(use-package avk-emacs-themes
  :disabled t
  :ensure t
  :config
  (progn (load-theme 'avk-daylight t t) (enable-theme 'avk-daylight)))

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
