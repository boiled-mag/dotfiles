;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(defun my/highlight-symbol-mode-config ()
;  (set-variable highlight-symbol-colors '("DarkOrange" "DodgerBlue4" "DeepPink1"))
  (set-variable highlight-symbol-idle-delay 0.5))

(add-hook 'highlight-symbol-mode-hook 'my/highlight-symbol-mode-config)

(when (require 'highlight-symbol nil t)
  (with-eval-after-load 'highlight-symbol
    (global-set-key (kbd "C-3") 'highlight-symbol-at-point)
    (global-set-key (kbd "M-C-3") 'highlight-symbol-remove-all)
    (set-variable highlight-nonselected-windows t)))

