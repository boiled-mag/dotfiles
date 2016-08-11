;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(when (or (eq system-type 'cygwin) (eq system-type 'windows-nt))
  (setq default-input-method "W32-IME")
  (setq-default w32-ime-mode-line-state-indicator "[--]")
  (setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
  (w32-ime-initialize)
  ;;; 日本語入力時にカーソルの色を変える設定 (色は適宜変えてください)
  (add-hook 'w32-ime-on-hook '(lambda () (set-cursor-color "coral4")))
  (add-hook 'w32-ime-off-hook '(lambda () (set-cursor-color "black")))
  )
