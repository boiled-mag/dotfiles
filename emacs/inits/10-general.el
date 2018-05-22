;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; 起動時のディレクトリの変更
(setq default-directory "~/")

(setq make-backup-files nil) ; *.~ とかのバックアップファイルを作らない
(setq auto-save-default nil) ; .#* とかのバックアップファイルを作らない

;; 行番号, 列番号の表示
;;(global-linum-mode t)
;;(setq linum-format "%4d:")
(column-number-mode t)     ; 列番号をモードラインに表示する

;; 各種バーの表示／非表示
(set-scroll-bar-mode 'nil) ; スクロールバーを消す
(tool-bar-mode 0)          ; ツールバーを消す
;;(menu-bar-mode 0)          ; メニューバーを消す

;; 対応する括弧を光らせる
(setq show-paren-delay 0)
(setq show-paren-style 'single)
(show-paren-mode t)
(global-hl-line-mode t)                 ; 現在行を強調する.

;; ビープ音を消す.
(setq ring-bell-function 'ignore)

;; タブをスペースとして入力する.
(setq-default tab-width 4 indent-tabs-mode nil)
;
;; 行末のスペースを表示する.
(setq-default show-trailing-whitespace t)

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

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



;;;
;;; Key設定
;;;
(global-set-key (kbd "<f5>") 'revert-buffer) ; F5キーでバッファ再読み込み.
(global-set-key (kbd "C-c C-f") 'recentf-open-files) ; 履歴機能からファイルを開く.

;; Ctrl+X Ctrl+Cで間違えてEmacsを終了しないように設定する.
;; このコマンドの代わりに, M-x exitと入力して終了する.
;;
(global-unset-key (kbd "C-x C-c"))
(defalias 'exit 'save-buffers-kill-emacs)


;;;
;;; テーマ設定
;;;
;;; themeフレームワークで書き直されたものをもとに, 色が重複している部分など少し手直し.
(when (require 'color-theme-modern nil t)
  (setq custom-theme-directory "~/.emacs.d/custom-themes/")
  (load-theme 'custom-charcoal-black t t)
  (enable-theme 'custom-charcoal-black))

;;
;; doom-themes
;;
;; (when (require 'doom-themes nil t)
;;   ;;
;;   (load-theme 'doom-vibrant t)
;;   ;; Enable flashing mode-line on errors
;;   (doom-themes-visual-bell-config)
;;   ;; Enable custom neotree theme
;;   (doom-themes-neotree-config))

;; ウィンドウを透明にする
;; アクティブウィンドウ／非アクティブウィンドウ（alphaの値で透明度を指定）
(add-to-list 'default-frame-alist '(alpha . (0.95 0.95)))

(setq initial-frame-alist
      (append '(
                (top . 0) ;;
                (left . 0) ;;
                (width . 120) ;;
                (height . 56)))) ;;

;; Windows環境
;; (when (or (eq system-type 'cygwin) (eq system-type 'windows-nt))
;;   (setq default-input-method "W32-IME")
;;   (setq-default w32-ime-mode-line-state-indicator "[--]")
;;   (setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
;;   (w32-ime-initialize)
;;   ;;; 日本語入力時にカーソルの色を変える設定
;;   (add-hook 'w32-ime-on-hook '(lambda () (set-cursor-color "coral4")))
;; ;  (add-hook 'w32-ime-off-hook '(lambda () (set-cursor-color "black")))
;;   (add-hook 'w32-ime-off-hook '(lambda () (set-cursor-color "blue3")))
;;   ;; minibufferに移動したときに最初に日本語入力が無効な状態にする.
;;   (add-hook 'minibuffer-setup-hook '(lambda ()
;;                                       (deactivate-input-method)
;;                                       (setq w32-ime-composition-window (minibuffer-window))))
;;   ;; Helm使用中に日本語入力を無効にする.
;;   (advice-add 'helm :around '(lambda (orig-fun &rest args)
;;                                (let ((select-window-functions nil)
;;                                      (w32-ime-composition-window (minibuffer-window)))
;;                                  (deactivate-input-method)
;;                                  (apply orig-fun args))))
;;   )

;; dired設定
(require 'dired-x)
(ffap-bindings)
(setq dired-dwin-target t)


;;;
;;; Recentf設定
;;;
(when (require 'recentf nil t)
  (setq recentf-max-saved-items 2000)   ; 2000ファイルまで履歴保存する.
  (setq recentf-auto-cleanup 'never)    ; 履歴から存在しないファイルを削除する.
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1))                     ; Emacs標準の履歴機能を使用する.


