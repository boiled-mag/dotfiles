;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; ivy
;;
(use-package ivy
  :ensure t
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
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(defvar counsel-find-file-ignore-regexp (regexp-opt '("./" "../")))


;;
;; counsel-gtags.el
;;
;; package.el�ɂ�counsel-gtags.el���C���X�g�[�����Ă���.
(use-package counsel-gtags
  :bind (("M-t" . 'counsel-gtags-find-definition)
         ("M-r" . 'counsel-gtags-find-reference)
         ("M-s" . 'counsel-gtags-find-symbol)
         ("M-," . 'counsel-gtags-go-backward)
         ("M-." . 'counsel-gtags-go-forward))
  :config
  (setq counsel-gtags-auto-update t)    ; �t�@�C����ۑ������Ƃ��Ɏ����I��tag�t�@�C�����X�V����.
  (add-hook 'c-mode-hook 'counsel-gtags-mode)
  (add-hook 'c++-mode-hook 'counsel-gtags-mode)
  )
