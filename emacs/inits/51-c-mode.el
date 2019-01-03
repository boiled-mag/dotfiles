;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; C++言語向け
;;

;; *.hファイルはc++-modeで開く.
(setq auto-mode-alist
      (append '(("\\.h$" . c++-mode))
              auto-mode-alist))

;; C++モードの個人設定を行う.
(defun my/c++-mode-hook ()
  (c-set-style "stroustrup")       ; コードフォーマットのテンプレートしてstroustrupを使用する.
  (setq indent-tabs-mode nil)      ; インデントではタブを使用せず半角スペースを使用する.
  (setq c-basic-offset 4)          ; 4文字に設定.
  (setq tab-width 4)               ; タブ幅を4文字に設定.
  (setq c-hungry-delete-key t)     ; 複数の空白を一度に削除.
  (c-set-offset 'innamespace 0)    ; namespace {}ではインデントしない.
  (c-set-offset 'arglist-intro '+) ; 引数リストの引数の一行目.
  (c-set-offset 'inher-intro '+)   ;
  (c-set-offset 'case-label '+)    ; switch文内のcase/default label
  )

;; C++モードに個人設定関数をフックする.
(add-hook 'c++-mode-hook 'my/c++-mode-hook)

;;
;; C言語向け
;;

;; Cモードの個人設定を行う関数.
(defun my/c-mode-hook ()
  (c-set-style "stroustrup")       ; コードフォーマットのテンプレートしてstroustrupを使用する.
  (setq indent-tabs-mode nil)      ; インデントではタブを使用せず半角スペースを使用する.
  (setq c-basic-offset 4)          ; 4文字に設定.
  (setq tab-width 4)               ; タブ幅を4文字に設定.
  (setq c-hungry-delete-key t)     ; 複数の空白を一度に削除.
  (c-set-offset 'arglist-intro '+) ; 引数リストの引数の一行目.
  (c-set-offset 'case-label '+)    ; switch文内のcase/default label
  )

;; Cモードに個人設定関数をフックする.
(add-hook 'c-mode-hook 'my/c-mode-hook)

;;
;; helm-gtags-mode
;;
;; helm-modeからivy-modeを使用するように変更したため, これらの設定は無効にする.
;;(add-hook 'c-mode-hook 'helm-gtags-mode)
;;(add-hook 'c++-mode-hook 'helm-gtags-mode)

;;
;; highlight-symbol-mode
;;
;; (add-hook 'c-mode-hook 'highlight-symbol-mode)
;; (add-hook 'c++-mode-hook 'highlight-symbol-mode)
