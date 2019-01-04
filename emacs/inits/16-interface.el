;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; powerline
;;
(use-package powerline
  :ensure t
  :config
  (powerline-default-theme)
;  (powerline-center-theme)
;  (powerline-center-evil-theme)
;  (powerline-vim-theme)
;  (powerline-nano-theme)
  )

;;
;; volatile-highlights
;;
(use-package volatile-highlights
  :ensure t
  :diminish (volatile-highlights-mode)
  :config
  (volatile-highlights-mode t))
