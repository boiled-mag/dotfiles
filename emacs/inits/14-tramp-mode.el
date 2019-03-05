;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; TRAMP-Mode
(use-package tramp
  :defer 5
  :config
  (with-eval-after-load 'tramp-cache
    (setq tramp-persistency-file-name "~/.emacs.d/tramp")))
