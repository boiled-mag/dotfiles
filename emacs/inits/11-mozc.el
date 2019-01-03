;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; mozc
;;
(use-package mozc
  :ensure t
  :config
  (setq default-input-method "japanese-mozc-im")
  ;; popupスタイルを使用する.
  (setq mozc-candidate-style 'popup)
  ;; wdired 終了時に IME を OFF にする
  (require 'wdired)
  (advice-add 'wdired-finish-edit
              :after (lambda (&rest args)
                       (deactivate-input-method)))
  ;; Windows の mozc では、セッション接続直後 directモード になるので hiraganaモード にする
  (advice-add 'mozc-session-execute-command
              :after (lambda (&rest args)
                       (when (eq (nth 0 args) 'CreateSession)
                         ;; (mozc-session-sendkey '(hiragana)))))
                         (mozc-session-sendkey '(Hankaku/Zenkaku))))))

;;
;; mozc-im
;;
(use-package mozc-im
  :ensure t
  :config
  ;; isearch を利用する前後で IME の状態を維持するための対策
  (add-hook 'isearch-mode-hook
            (lambda ()
              (setq im-state mozc-im-mode)))
  (add-hook 'isearch-mode-end-hook
            (lambda ()
              (unless (eq im-state mozc-im-mode)
                (if im-state
                    (activate-input-method default-input-method)
                  (deactivate-input-method))))))

;;
;; mozc-popup
;;
(use-package mozc-popup
  :ensure t)

;;
;; mozc-cursor-color
;;
(use-package mozc-cursor-color
  :config
  (setq mozc-cursor-color-alist '((direct         . "red")
                                  (read-only      . "yellow")
                                  (hiragana       . "green")
                                  (full-katakana  . "goldenrod")
                                  (half-ascii     . "dark orchid")
                                  (full-ascii     . "orchid")
                                  (half-katakana  . "dark goldenrod")))
  ;; mozc-cursor-color を利用するための対策
  (make-variable-buffer-local 'mozc-im-mode)
  (add-hook 'mozc-im-activate-hook (lambda () (setq mozc-im-mode t)))
  (add-hook 'mozc-im-deactivate-hook (lambda () (setq mozc-im-mode nil)))
  (advice-add 'mozc-cursor-color-update
              :around (lambda (orig-fun &rest args)
                        (let ((mozc-mode mozc-im-mode))
                          (apply orig-fun args)))))
