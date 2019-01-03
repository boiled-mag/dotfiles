;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; TRAMP-Mode
(use-package tramp
  :defer 5
  :config
  (with-eval-after-load 'tramp-cache
    (setq tramp-persistency-file-name "~/.emacs.d/tramp"))

  ;; bluefin@192.168.1.106用の秘密鍵を設定する.
  (defvar tramp-ssh-ppk-bluefin (expand-file-name "~/../../ssh_keys/ssh_private_key.ppk"))
  (defvar tramp-bluefin-plink '("bluefin"
                                (tramp-login-program "plink")
                                (tramp-login-args (("%h")
                                                   ("-l" "%u")
                                                   ("-P" "%p")
                                                   ("-ssh")
                                                   ("-i" ,tramp-ssh-ppk-bluefin)))))
  (add-to-list 'tramp-methods tramp-bluefin-plink)
  )
