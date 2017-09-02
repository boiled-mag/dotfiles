;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; Manually installed packages by packages.el
(defvar my/packages
  '(init-loader
    color-theme-modern
    doom-themes
    highlight-symbol
    company
    auto-complete
    flycheck
    flycheck-popup-tip
;;    flycheck-pos-tip
    flycheck-rust
    yasnippet
    eldoc-extension
    helm
    helm-gtags
    rust-mode
    racer
    cargo
    use-package
    ))

;;
;; el-get
;;
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
