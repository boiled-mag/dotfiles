;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(use-package highlight-symbol
  :bind (("C-3"   . 'highlight-symbol-at-point)
         ("M-C-3" . 'highlight-symbol-remove-all))
  :config
  (highlight-symbol-nav-mode t)
  (setq highlight-symbol-idle-delay 1.0)  ; ハイライトするまでに1.0秒のディレイを入れる.
  )


;; use-packageに書き換え. 念のため古い設定を残す.
;; (when (require 'highlight-symbol nil t)
;;   (with-eval-after-load 'highlight-symbol
;;     (global-set-key (kbd "C-3") 'highlight-symbol-at-point)
;;     (global-set-key (kbd "M-C-3") 'highlight-symbol-remove-all))

;; (defun my/highlight-symbol-mode-hook ()
;; ;  (set-variable highlight-symbol-colors '("DarkOrange" "DodgerBlue4" "DeepPink1"))
;;   (setq highlight-symbol-idle-delay 1.0) ; ハイライトするまでに1.0秒のディレイを入れる.
;;   )

;; (add-hook 'highlight-symbol-mode-hook 'my/highlight-symbol-mode-hook)

