;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'whitespace)

(setq whitespace-style '(face       ; faceで可視化
                         trailing   ; 行末
                         tabs       ; タブ
                         spaces     ; スペース
;;                         empty    ; 先頭／末尾の空行
                         space-mark ; 表示のマッピング
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))


;; スペースは全角のみを可視化
(setq whitespace-space-regexp "\\(\u3000+\\)")

;; 保存前に自動でクリーンアップ
(setq whitespace-action '(auto-cleanup))

;;(defvar my/bg-color "#232323")
(set-face-attribute 'whitespace-trailing nil
;;                    :background my/bg-color
                    :background 'nil
                    :foreground "DeepPink"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
;;                    :background my/bg-color
                    :background 'nil
                    :foreground "GreenYellow"
;;                    :foreground "LightSkyBlue"
                    :underline t)
(set-face-attribute 'whitespace-space nil
;;                    :background my/bg-color
                    :background 'nil
                    :foreground "GreenYellow"
                    :weight 'bold)
(set-face-attribute 'whitespace-empty nil
;;                    :background my/bg-color)
                    :background 'nil)

(global-whitespace-mode t)
