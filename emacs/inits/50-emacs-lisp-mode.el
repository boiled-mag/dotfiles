;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (when (require 'eldoc-extension nil t)
               (eldoc-mode t))
             ))
