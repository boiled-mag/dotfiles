;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;; rust-mode
(use-package rust-mode
  :defer t
  :config
  (setq rust-format-on-save t))

;;; cargo
(use-package cargo
  :init
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  (add-hook 'toml-mode-hook 'cargo-minor-mode))

;;; racer
(use-package racer
  :init
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode))

;;; flycheck-rust
(use-package flycheck-rust
  :init
  (add-hook 'rust-mode-hook
            '(lambda ()
               (flycheck-mode)
               (flycheck-rust-setup))))
