;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; company-modeの設定をhookにて行う関数
;;
;; (defun my/company-mode-hook ()
;;   ;; [TODO]
;;   ;; Windows環境で使用しているため一時的にcompany-clangを無効化する.
;;   (setq company-backends (delete 'company-clang company-backends)))

;;
;; company-mode
;;
(use-package company
  :ensure t
  :pin melpa
  :diminish company-mode
  :config
  (global-company-mode)
  (setq-default comapny-idle-delay 0.0)
  (setq-default company-minimum-prefix-length 2)
  (setq-default company-selection-wrap-around t)
  (add-hook 'company-mode-hook
          (lambda ()
            (define-key company-active-map (kbd "M-n") nil)
            (define-key company-active-map (kbd "M-p") nil)
            (define-key company-active-map (kbd "C-n") 'company-select-next)
            (define-key company-active-map (kbd "C-p") 'company-select-previous)
            (define-key company-active-map (kbd "C-h") nil)
            ))
;  (add-hook 'company-mode-hook 'my/company-mode-hook)
  )

;; 各モードごとにcompany-modeを有効にしたい場合は下記のようにhookさせる.
;; その際は(global-company-mode)を無効にする.
;; (add-hook 'c-mode-hook 'company-mode)
