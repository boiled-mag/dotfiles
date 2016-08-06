;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; 起動時のディレクトリの変更
(setq default-directory "~/")

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; 行番号表示
(global-linum-mode)

;; ツールバーを非表示に
(tool-bar-mode 0)

;; カーソル行をハイライトする
(global-hl-line-mode t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;;
;; 言語設定. UTF-8にする.
;;
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;;
;; 改行コードを表示する
;;
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;;
;; dired設定
;;
(require 'dired-x)
(ffap-bindings)

