;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(use-package plantuml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.puml\\'" . plantuml-mode))
  (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
  (setq plantuml-jar-path "PATH TO plantuml.jar"))
