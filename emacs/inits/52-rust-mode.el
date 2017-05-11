;; rust-mode

;;; cargoでインストールしたracerやrustfmtや, コンパイラにパスを通す.
(add-to-list 'exec-path (expand-file-name "/cygdrive/c/Users/mag/.cargo/bin/"))

(add-hook 'racer-mode-hook #'eldoc-mode)

(eval-after-load "rust-mode"
  (lambda ()
    '(setq-default rust-format-on-save t)))

;(custom-set-variables
; '(racer-cargo-home (expand-file-name "C:/Users/mag/.cargo"))
; '(racer-rust-src-path (expand-file-name "c:/Users/mag/.rustup/toolchains/stable-x86_64-pc-windows-msvc/lib/ustlib/src/rust/src")))

(add-hook 'rust-mode-hook (lambda()
                            (racer-mode)))

(with-eval-after-load 'rust-mode
    (flycheck-rust-setup))

