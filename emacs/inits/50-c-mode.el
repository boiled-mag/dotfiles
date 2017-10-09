;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;;
;;; C++言語向け
;;;
(add-hook 'c++-mode-hook
          (lambda ()
            (c-set-style "stroustrup")
            (setq tab-width 4)
            (setq c-basic-offset 4)
            (setq indent-tabs-mode nil)
            (setq c-hungry-delete-key t)     ; 複数の空白を一度に削除.
            (c-set-offset 'innamespace 0)    ; namespace {}ではインデントしない.
            (c-set-offset 'arglist-intro '+) ; 引数リストの引数の一行目.
            (c-set-offset 'inher-intro '+)   ;
            (c-set-offset 'case-label '+)    ; switch文内のcase/default label
            ))


;;;
;;; C言語向け
;;;
;; (add-hook 'c-mode-hook
;;           '(lambda ()
;;              (setq c-basic-offset 4)
;;              (setq c-hungry-delete-key t)     ; 複数の空白を一度に削除.
;;              ))

;;;
;;; helm-gtags-mode
;;;
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

;;;
;;; highlight-symbol-mode
;;;
(add-hook 'c-mode-hook 'highlight-symbol-mode)
(add-hook 'c++-mode-hook 'highlight-symbol-mode)

