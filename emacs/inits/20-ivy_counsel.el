;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; ivy
;;
(use-package ivy
  :ensure t
  :pin melpa                                ; これを指定しないとgnuの古いバージョンがインストールされる.
  :diminish ivy-mode
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-height 30)
  (setq ivy-extra-directories nil)
  (setq ivy-re-builders-alist
        '((t . ivy--regex-plus))))

;;
;; counsel
;;
(use-package counsel
  :ensure t
  :config
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (defvar counsel-find-file-ignore-regexp (regexp-opt '("./" "../"))))

;;
;; ivy-rich
;;
(use-package ivy-rich
  :after ivy
  :ensure t
  :diminish ivy-rich-mode
  :config
  (ivy-rich-mode))

;;
;; counsel-gtags.el
;;
;; 2019.1.3 LSPモードを使用するため一時的にOFFにしている.
;; (use-package counsel-gtags
;;   :ensure t
;;   :bind (("M-t" . 'counsel-gtags-find-definition)
;;          ("M-r" . 'counsel-gtags-find-reference)
;;          ("M-s" . 'counsel-gtags-find-symbol)
;;          ("M-," . 'counsel-gtags-go-backward)
;;          ("M-." . 'counsel-gtags-go-forward))
;;   :config
;;   (setq counsel-gtags-auto-update t)    ; ファイルを保存したときに自動的にtagファイルを更新する.
;;   (add-hook 'c-mode-hook 'counsel-gtags-mode)
;;   (add-hook 'c++-mode-hook 'counsel-gtags-mode))
