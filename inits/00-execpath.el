;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(setenv "PATH"
        (concat
         "C:\\cygwin64\\bin;"
         (getenv "PATH")))

(setq exec-path (append exec-path '("C:\\cygwin64\\bin")))