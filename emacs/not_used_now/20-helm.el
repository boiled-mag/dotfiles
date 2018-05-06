;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(when (require 'helm nil t)
  (with-eval-after-load
    (define-key helm-map (kbd "TAB") 'helm-execute-persistent-action)
    (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
    (define-key helm-map (kbd "C-z") 'helm-select-action)
;    (define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;    (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
    ))

(when (require 'helm-config nil t))

(add-hook 'helm-mode-hook
          (lambda ()
            (add-to-list 'helm-completing-read-handlers-alist '(find-file . nil))))

(defvar helm-source-emacs-commands
  (helm-build-sync-source "Emacs commands"
    :candidates (lambda ()
                  (let ((cmds))
                    (mapatoms
                     (lambda (elt) (when (commandp elt) (push elt cmds))))
                    cmds))
    :coerce #'intern-soft
    :action #'command-execute)
  "A simple helm source for Emacs commands.")

(defvar helm-source-emacs-commands-history
  (helm-build-sync-source "Emacs commands history"
    :candidates (lambda ()
                  (let ((cmds))
                    (dolist (elem extended-command-history)
                      (push (intern elem) cmds))
                    cmds))
    :coerce #'intern-soft
    :action #'command-execute)
  "Emacs commands history")

(custom-set-variables
 '(helm-mini-default-sources '(helm-source-buffers-list
                               helm-source-recentf
                               helm-source-files-in-current-dir
                               helm-source-emacs-commands-history
                               helm-source-emacs-commands
                               )))

(define-key global-map (kbd "C-;") 'helm-mini)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)



;;
;; helm-gtags
;;
(add-hook 'helm-gtags-mode-hook
          '(lambda()
             ;; 入力されたタグの定義元へジャンプ
             (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
             ;; 入力タグを参照する場所へジャンプ
             (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
             ;; 入力したシンボルを参照する場所へジャンプ
             (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
             ;; タグ一覧からタグを選択し, その定義元にジャンプする
             (local-set-key (kbd "M-l") 'helm-gtags-select)
             ;; ジャンプ前の場所に戻る
             (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)))

(custom-set-variables
 '(helm-gtags-path-style 'relative)
 ;; '(helm-gtags-ignore-case t)
 '(helm-gtags-display-style 'detail)
 '(helm-gtags-auto-update t))

(helm-mode 1)

