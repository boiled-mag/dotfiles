;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(add-hook 'emacs-lisp-mode-hook '(lambda ()
                                   (require 'eldoc-extension)
                                   (eldoc-mode t)
                                   ))
