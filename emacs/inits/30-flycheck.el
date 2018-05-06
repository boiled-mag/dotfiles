;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; flycheck全般
;;

(when (require 'flycheck nil 'noerror)
  (custom-set-variables
   ;; ポップアップでエラー表示するときに付くprefix文字の指定.
   '(flycheck-popup-tip-error-prefix "* ")
   '(flycheck-display-errors-delay 0.5))
  (define-key flycheck-mode-map (kbd "C-M-n") 'flycheck-next-error)
  (define-key flycheck-mode-map (kbd "C-M-p") 'flycheck-previous-error)
  ;; C, C++モードで有効化
  (add-hook 'c-mode-hook 'flycheck-mode)
  (add-hook 'c++-mode-hook 'flycheck-mode)
  ;; Emacs Lispモードで有効化
  (add-hook 'emacs-lisp-mode-hook 'flycheck-mode)
  ;; Rustモードで有効化
  (add-hook 'rust-mode-hook 'flycheck-mode)
  )


;;
;; flycheck-popup-tip
;;
;; ポップアップでエラー等を表示する.
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode))


;; Emacs Lisp向け設定.
;;

;; emacs-lisp-checkdocだけは無効化.
(add-hook 'emacs-lisp-mode-hook
           '(lambda ()
              (setq flycheck-disabled-checkers '(emacs-lisp-checkdoc))
              ))

;; (with-eval-after-load 'flycheck
;;   (setq-default flycheck-disable-checkers '(emacs-lisp-checkdoc)))

;;
;; C,C++向け設定.
;;

;; syntax checker by gcc at LANG=ja_JP.XXX
(flycheck-define-checker c/c++-gcc-ja
  "A C checker using gcc."
  :command ("gcc"
            "-std=c11"
            "-Wall" "-Wextra" "-pedantic"
            (option-list "-include" flycheck-gcc-includes)
            (option-list "-I" flycheck-gcc-include-path)
            (eval flycheck-gcc-args)
            "-x" (eval
                  (pcase major-mode
                    (`c++-mode "c++")
                    (`c-mode "c")))
            "-S" "-o" null-device
            source)
;;            "-")
;;  :standard-input t
  :error-patterns  ((error line-start
                           (file-name) ":" line ":" column ":" " エラー: " (message)
                           line-end)
                    (error line-start
                           (file-name) ":" line ":" column ":" " 致命的エラー: " (message)
                           line-end)
                    (warning line-start
                           (file-name) ":" line ":" column ":" " 警告: " (message)
                           line-end))
  :modes (c-mode))

;; syntax checker by g++ at LANG=ja_JP.XXX
(flycheck-define-checker c/c++-g++-ja
  "A C++ checker using g++."
  :command ("g++"
            "-std=c++14"
            "-Wall" "-Wextra" "-pedantic"
            (option-list "-include" flycheck-gcc-includes)
            (option-list "-I" flycheck-gcc-include-path)
            "-S" "-o" null-device
            source)
;;            "-")
;;  :standard-input t
  :error-patterns  ((error line-start
                           (file-name) ":" line ":" column ":" " エラー: " (message)
                           line-end)
                    (error line-start
                           (file-name) ":" line ":" column ":" " 致命的エラー: " (message)
                           line-end)
                    (warning line-start
                           (file-name) ":" line ":" column ":" " 警告: " (message)
                           line-end))
  :modes (c++-mode))

;; (eval-after-load 'flycheck
;;   '(add-to-list 'flycheck-checkers 'c/c++-gcc-ja))

;; (eval-after-load 'flycheck
;;   '(add-to-list 'flycheck-checkers 'c/c++-g++-ja))

;; (add-hook 'c-mode-hook
;;           '(lambda ()
;;              (flycheck-select-checker 'c/c++-gcc-ja)))

;; (add-hook 'c++-mode-hook
;;           '(lambda ()
;;              (flycheck-select-checker 'c/c++-g++-ja)))

