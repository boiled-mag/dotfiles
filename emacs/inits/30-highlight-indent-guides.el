;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(use-package highlight-indent-guides
  :ensure t
  :diminish highlight-indent-guides-mode
  :hook
  ((prog-mode) . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'character))
