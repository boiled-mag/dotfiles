;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;
;; irony-mode
;;

(use-package irony
  :defer t
  :commands irony-mode
  :init ; ロード前に評価する式
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'c++-mode-hook 'irony-mode)
  :config ; ロード後に評価する式
  ;; C言語用にコンパイルオプションを設定する.
  (add-hook 'c-mode-hook
            '(lambda ()
               (setq irony-additional-clang-options '("-std=c11" "-Wall" "-Wextra" "-Wpedantic"))))
  ;; C++言語用にコンパイルオプションを設定する.
  (add-hook 'c++-mode-hook
            '(lambda ()
               (setq irony-additional-clang-options '("-std=c++14" "-Wall" "-Wextra" "-Wpedantic"))))
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  ;; Windows環境でパフォーマンスを落とす要因を回避.
  ;; https://github.com/Sarcasm/irony-mode
  (when (boundp 'w32-pipe-read-delay)
    (setq w32-pipe-read-delay 0))
  ;; バッファサイズ設定(default:4KB -> 64KB)
  (when (boundp 'w32-pipe-buffer-size)
    (setq irony-server-w32-pipe-buffer-size (* 64 1024)))
  )

(use-package company-irony
  :defer t
  :config
  ;; companyの補完のバックエンドにironyを使用する.
  (add-to-list 'company-backends '(company-irony-c-headers company-irony))
  )
