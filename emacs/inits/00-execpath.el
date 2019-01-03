;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(setenv "PATH"
        (concat
         "C:\\msys64\\mingw64\\bin" ";"
         (getenv "PATH")))

(setq exec-path (append exec-path '("c:/msys64/mingw64/bin")))
