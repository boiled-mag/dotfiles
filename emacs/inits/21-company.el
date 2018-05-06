;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(when (require 'company nil t)
  (global-company-mode)
;;  (set-variable comapny-idle-delay 0.0)
  (setq-default comapny-idle-delay 0.0)
;;  (set-variable company-minimum-prefix-length 2)
  (setq-default company-minimum-prefix-length 2)
;;  (set-variable company-selection-wrap-around t))
  (setq-default company-selection-wrap-around t))

;; 各モードごとにcompany-modeを有効にしたい場合は下記のようにhookさせる.
;; その際は(global-company-mode)を無効にする.
;; (add-hook 'c-mode-hook 'company-mode)
(add-hook 'company-mode-hook
          (lambda ()
            (define-key company-active-map (kbd "M-n") nil)
            (define-key company-active-map (kbd "M-p") nil)
            (define-key company-active-map (kbd "C-n") 'company-select-next)
            (define-key company-active-map (kbd "C-p") 'company-select-previous)
            (define-key company-active-map (kbd "C-h") nil)
            ))

