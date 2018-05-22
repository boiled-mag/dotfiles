;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;;
;;; フォント設定.
;;;

;;; for Inconsolata
(create-fontset-from-ascii-font "Inconsolata:size=15:weight=normal:slant=normal"
                                nil
                                "Inconsolata")
;;; Inconsolataの場合, 非ASCIIコード部分はRicty Diminishedを使用する.
(set-fontset-font "fontset-Inconsolata"
                  'unicode
                  ;; (font-spec)ではなく「"Ricty Diminished-11"」のような指定もできる.
                  (font-spec
                   :family "Ricty Diminished"
                   :size 16)
                  nil
                  'append)

;;; for MeiryoKe_Console
(create-fontset-from-ascii-font "MeiryoKe_Console:size=14"
                                nil
                                "MeiryoKe_Console")
(set-fontset-font "fontset-MeiryoKe_Console"
                  'unicode
                  (font-spec
                   :family "MeiryoKe_Console"
                   :size 14)
                  nil
                  'append)

;;; for Ricty Diminished
(create-fontset-from-ascii-font "Ricty Diminished:size=18:weight=normal:slant=normal"
                                nil
                                "RictyDiminished")
(set-fontset-font "fontset-RictyDiminished"
;(set-fontset-font nil
                  'unicode
                  (font-spec
                   :family "Ricty Diminished"
                   :size 18)
                  nil
                  'append)

;;; CamingoCode + Ricty Diminished
;;;   下記のようなサイズの組み合わせだと全角文字と半角文字のバランスがよい.
;;;   他の組み合わせだとズレるので注意.
;;;     + CamingoCode:size=13, Ricty Diminished:size=14
;;;     + CamingoCode:size=15, Ricty Diminished:size=16
;;;     + CamingoCode:size=17, Ricty Diminished:size=18
(create-fontset-from-ascii-font "CamingoCode:size=15:weight=normal:slant=normal"
                                nil
                                "CamingoCode_RictyDiminished")
(set-fontset-font "fontset-CamingoCode_RictyDiminished"
                  'unicode
                  (font-spec
                   :family "Ricty Diminished"
                   :size 16)
                  nil
                  'append)

;;;
;;; 上記で作成したフォントセットから, 使用するものを選択する.
;;;
;(add-to-list 'default-frame-alist '(font . "fontset-Inconsolata"))
;(add-to-list 'default-frame-alist '(font . "fontset-MeiryoKe_Console"))
;(add-to-list 'default-frame-alist '(font . "fontset-RictyDiminished"))
(add-to-list 'default-frame-alist '(font . "fontset-CamingoCode_RictyDiminished"))
