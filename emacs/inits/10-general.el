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
;; (global-hl-line-mode t)

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
;;; フォント設定.
;;;

;;; for Inconsolata
(create-fontset-from-ascii-font "Inconsolata:size=16:weight=normal:slant=normal"
                                nil
                                "Inconsolata")
;;; Inconsolataの場合, 非ASCIIコード部分はRicty Diminishedを使用する.
(set-fontset-font "fontset-Inconsolata"
                  'unicode
                  ;; (font-spec)ではなく「"Ricty Diminished-11"」のような指定もできる.
                  (font-spec
                   :family "Ricty Diminished"
                   :size 16)
                  nil
                  'append)

;;; for MeiryoKe_Console
(create-fontset-from-ascii-font "MeiryoKe_Console:size=11"
                                nil
                                "MeiryoKe_Console")
(set-fontset-font "fontset-MeiryoKe_Console"
                  'unicode
                  (font-spec
                   :family "MeiryoKe_Console"
                   :size 11)
                  nil
                  'append)

;;; for Ricty Diminished
(create-fontset-from-ascii-font "Ricty Diminished:size=18:weight=normal:slant=normal"
                                nil
                                "RictyDiminished")
;(set-fontset-font "fontset-RictyDiminished"
(set-fontset-font nil
                  'unicode
                  (font-spec
                   :family "Ricty Diminished"
                   :size 18)
                  nil
                  'append)

;;;
;;; 上記で作成したフォントセットから, 使用するものを選択する.
;;;
;(add-to-list 'default-frame-alist '(font . "fontset-Inconsolata"))
;(add-to-list 'default-frame-alist '(font . "fontset-MeiryoKe_Console"))
(add-to-list 'default-frame-alist '(font . "fontset-RictyDiminished"))


;;; Ctrl+X Ctrl+Cで間違えてEmacsを終了しないように設定する.
;;; このコマンドの代わりに, M-x exitと入力して終了する.
;;;
(global-unset-key (kbd "C-x C-c"))
(defalias 'exit 'save-buffers-kill-emacs)

;;
;; color-theme
;;
;;(when (require 'color-theme nil t)
;;  (color-theme-initialize)
;;  (color-theme-charcoal-black))
;;  (color-theme-deep-blue))   ; default

;;
;; doom-themes
;;
(when (require 'doom-themes nil t)
  ;;
  (load-theme 'doom-vibrant t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme
  (doom-themes-neotree-config))

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
(when (or (eq system-type 'cygwin) (eq system-type 'windows-nt))
  (setq default-input-method "W32-IME")
  (setq-default w32-ime-mode-line-state-indicator "[--]")
  (setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
  (w32-ime-initialize)
  ;;; 日本語入力時にカーソルの色を変える設定
  (add-hook 'w32-ime-on-hook '(lambda () (set-cursor-color "coral4")))
;  (add-hook 'w32-ime-off-hook '(lambda () (set-cursor-color "black")))
  (add-hook 'w32-ime-off-hook '(lambda () (set-cursor-color "blue3")))
  ;; minibufferに移動したときに最初に日本語入力が無効な状態にする.
  (add-hook 'minibuffer-setup-hook '(lambda ()
                                      (deactivate-input-method)
                                      (setq w32-ime-composition-window (minibuffer-window))))
  ;; Helm使用中に日本語入力を無効にする.
  (advice-add 'helm :around '(lambda (orig-fun &rest args)
                               (let ((select-window-functions nil)
                                     (w32-ime-composition-window (minibuffer-window)))
                                 (deactivate-input-method)
                                 (apply orig-fun args))))
  )

;; dired設定
(require 'dired-x)
(ffap-bindings)
(setq dired-dwin-target t)


