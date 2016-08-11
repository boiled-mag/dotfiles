;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; 起動時のディレクトリの変更
(setq default-directory "~/")

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; 行番号表示
(global-linum-mode)
(column-number-mode t)

;; ツールバーを非表示に
(tool-bar-mode 0)

;; カーソル行をハイライトする
(global-hl-line-mode t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; ビープ音を消す.
(setq ring-bell-function 'ignore)

;; タブをスペースとして入力する.
(setq-default tab-width 4 indent-tabs-mode nil)

;; 行末のスペースを表示する.
(setq-default show-trailing-whitespace t)

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;;
;; 言語設定 (UTF-8にする)
;; 2016.8.11 以下のような設定は不要.
;; 環境変数からlocaleを取得して適切に設定される.
;;
;; (set-locale-environment nil)
;; (set-language-environment "Japanese")
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (set-buffer-file-coding-system 'utf-8)
;; (setq default-buffer-file-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (prefer-coding-system 'utf-8)

;;
;; dired設定
;;
(require 'dired-x)
(ffap-bindings)

