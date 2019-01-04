;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; anzu
;;
;; isearch検索時にヒットした数と現在の位置を表示する.
;; 参考：https://qiita.com/syohex/items/56cf3b7f7d9943f7a7ba
(use-package anzu
  :ensure t
  :diminish (global-anzu-mode
             anzu-mode)
  :custom
  (anzu-deactivate-region t)        ;
  (anzu-search-threshold 1000)      ; 検索ヒット数を数える上限.
  (anzu-use-migemo nil)             ; migemoを使っている場合はtにする.
  :config
  (set-face-attribute 'anzu-mode-line nil
                      :foreground "yellow"
                      :weight 'bold)
  (global-anzu-mode +1))            ; 常に有効にする.
