;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(use-package highlight-symbol
  :ensure t
  :diminish highlight-symbol-mode
  :bind (("C-3"   . 'highlight-symbol-at-point)
         ("M-C-3" . 'highlight-symbol-remove-all))
  :hook
  ((c-mode c++-mode) . highlight-symbol-mode)
  :config
  (highlight-symbol-nav-mode t)
  (setq highlight-symbol-idle-delay 1.0)  ; ハイライトするまでに1.0秒のディレイを入れる.
  )
