;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;=======================================================================
;; Coding Style
;;=======================================================================
;; C/C++共通
(with-eval-after-load 'c++-mode
  (setq-default c-basic-offset 4))

;; C/C++共通
(defun my-c-common-mode ()
  "C, C++ original mode setup function."
  (c-set-style "stroustrup")
  (show-paren-mode t)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  )

;; C言語向け
(defun my-c-mode ()
  "C only original mode setup function."
  )

;; (defun my-c++-mode ()
;;   "C++ only original mode setup function."
;;   (c-set-offset 'innamespace 0)     ;; namespace {}ではインデントしない.
;;   (c-set-offset 'arglist-intro '+)  ;; 引数リストの引数の一行目.
;;   (c-set-offset 'inher-intro '+)    ;;
;;   (c-set-offset 'case-label '+)     ;; switch文内のcase/default label
;;   )

;; C++言語向け
(add-hook 'c++-mode-hook
          (lambda ()
            (c-set-style "stroustrup")
            (show-paren-mode t)
            (setq tab-width 4)
            (setq indent-tabs-mode nil)
            (c-set-offset 'innamespace 0)     ;; namespace {}ではインデントしない.
            (c-set-offset 'arglist-intro '+)  ;; 引数リストの引数の一行目.
            (c-set-offset 'inher-intro '+)    ;;
            (c-set-offset 'case-label '+)     ;; switch文内のcase/default label
            ))

;;=======================================================================
;; c-mode-hook, c++-mode-hookに定義した関数を渡す.
;;=======================================================================
;; (add-hook 'c-mode-hook
;;           '(lambda()
;;              '('my-c-common-mode
;;                'my-c-mode)))
(add-hook 'c-mode-hook 'my-c-common-mode)
(add-hook 'c-mode-hook 'my-c-mode)

;; (add-hook 'c++-mode-hook
;;           '(lambda ()
;;              '('(my-c-common-mode)
;;                '(my-c++-mode))))
;;(add-hook 'c++-mode-hook 'my-c-common-mode 'my-c++-mode)


;;=======================================================================
;; helm-gtags-mode
;;=======================================================================
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

;; highlight-symbol-mode
(add-hook 'c-mode-hook 'highlight-symbol-mode)
(add-hook 'c++-mode-hook 'highlight-symbol-mode)

