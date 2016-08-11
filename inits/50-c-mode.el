;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; Tab
;;
(defun my-c-common-mode ()
  "C, C++ original mode setup function."
  (c-set-style "stroustrup")
  (setq tab-width 4))

(defun my-c-mode ()
  "C only original mode setup function."
  )

(defun my-c++-mode ()
  "C++ only original mode setup function."
  (c-set-offset 'innamespace 0)
  )


;;
;; helm-gtags-mode
;;
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

;;
;; c-mode-hook, c++-mode-hookに定義した関数を渡す.
;;
(add-hook 'c-mode-hook
          '(lambda()
             '(my-c-common-mode)
             'my-c-mode))

(add-hook 'c++-mode-hook
          '(lambda()
             '(my-c-common-mode)
             '(my-c++-mode))


