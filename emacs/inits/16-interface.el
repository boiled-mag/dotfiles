;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; powerline
;;
(use-package powerline
  :ensure t
  :config
  ;; どれか一つを有効にする.
  (powerline-default-theme)
;  (powerline-center-theme)
;  (powerline-center-evil-theme)
;  (powerline-vim-theme)
;  (powerline-nano-theme)
  )

;;
;; volatile-highlights
;;
;; ペーストなどをした際に編集した領域を色付けしてくれる.
(use-package volatile-highlights
  :ensure t
  :diminish (volatile-highlights-mode)
  :config
  (volatile-highlights-mode t))

;;
;; rainbow-mode
;;
;; 色名やコードが出てきたときにその色付きで表示する.
(use-package rainbow-mode
  :ensure t
  :diminish rainbow-mode
  :hook
  ((css-mode scss-mode less-mode web-mode html-mode php-mode text-mode emacs-lisp-mode) . rainbow-mode))

;;
;; tabber
;;
(use-package tabbar
  :ensure t
  :config
  (tabbar-mode 1)
  ;; タブ上でマウスホイール操作を無効化する.
  (tabbar-mwheel-mode -1)
  ;; グループ化しない
  (setq tabbar-buffer-groups-function nil)
  ;; 左に表示されるボタンを無効化
  (dolist (btn '(tabbar-buffer-home-button
                 tabbar-scroll-left-button
                 tabbar-scroll-right-button))
    (set btn (cons (cons "" nil)
                   (cons "" nil))))
  ;; 外観変更
  (set-face-attribute
   'tabbar-default nil
   :family "fontset-CamingoCode_RictyDiminished"
;;   :background "#34495E"
   :background "#2f4f4f"
   :foreground "#EEEEEE"
   :height 1.00
   )
  (set-face-attribute
   'tabbar-unselected nil
;;   :background "#34495E"
   :background "#2f4f4f"
   :foreground "#EEEEEE"
   :box nil
   )
  (set-face-attribute
   'tabbar-modified nil
   :background "#E67E22"
   :foreground "#EEEEEE"
   :box nil
   )
  (set-face-attribute
   'tabbar-selected nil
   :background "#E74C3C"
   :foreground "#EEEEEE"
   :box nil)
  (set-face-attribute
   'tabbar-button nil
   :box nil)
  (set-face-attribute
   'tabbar-separator nil
   :height 1.0)
  :custom
  ;; タブの長さ
  (tabbar-separator '(2.2)))

;;
;; dashboard
;;
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;;
;; Undo-tree
;;

;;
;; Multiple-cursors
;;

;;
;; expand-region.el
;;
