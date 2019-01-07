;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; custom-set-variableの設定を書き出すファイルをinit.elから移す.
;;
(setq custom-file (expand-file-name "custom-set-variables.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;;
;; package.el
;;
(require 'package)
(package-initialize)

;; add MELPA and Org-mode for package.el
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
;        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(unless package-archive-contents
  (package-refresh-contents))

;;
;; use-package.el
;;
;; use-package.elをインストールする.
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))
(require 'use-package)
;; *Messages*にロード時のログを出力するように設定.
(setq use-package-verbose t)
;; デフォルトではロードに0.01秒以上かかった場合に秒数が記録される.
;; 0.001秒以上で表示されるように設定変更.
(setq use-package-minimum-reported-time 0.001)

;; use-packageで:diminishを使用するのに必要になる.
(use-package diminish
  :ensure t)

;;
;; init-loader.el
;;
;; 設定ファイルはinits以下に置いていて, init-loaderによって読み込まれる.
;; M-x init-load-show-logにてinit-loaderの動作を確認できる.
(use-package init-loader
  :ensure t
  :config
  (init-loader-load (expand-file-name "inits" user-emacs-directory))
  (setq-default init-loader-show-log-after-init nil))
