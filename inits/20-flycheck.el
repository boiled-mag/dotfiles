;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; flycheck
;;
(when (require 'flycheck nil 'noerror)
  (custom-set-variables
   ;; エラーをポップアップで表示
   '(flycheck-display-errors-function
     (lambda (errors)
       (let ((messages (mapcar #'flycheck-error-message errors)))
         (popup-tip (mapconcat 'identity messages "\n")))))
   '(flycheck-display-errors-delay 0.5))
  (define-key flycheck-mode-map (kbd "C-M-n") 'flycheck-next-error)
  (define-key flycheck-mode-map (kbd "C-M-p") 'flycheck-previous-error)
  (add-hook 'c-mode-hook 'flycheck-mode)
  (add-hook 'c++-mode-hook 'flycheck-mode))


;; syntax checker JAPANESE gcc.
(flycheck-define-checker c/c++-gcc-ja
  "A C/C++ checker using g++."
  :command ("g++" "-Wall" "-Wextra" source)
  :error-patterns  ((error line-start
                           (file-name) ":" line ":" column ":" " エラー: " (message)
                           line-end)
                    (warning line-start
                           (file-name) ":" line ":" column ":" " 警告: " (message)
                           line-end))
  :modes (c-mode c++-mode))

(eval-after-load 'flycheck
  '(add-to-list 'flycheck-checkers 'c/c++-gcc-ja))

(add-hook 'c-mode-hook
          '(lambda()
             (flycheck-select-checker 'c/c++-gcc-ja)))
(add-hook 'c++-mode-hook
          '(lambda()
             (flycheck-select-checker 'c/c++-gcc-ja)))

