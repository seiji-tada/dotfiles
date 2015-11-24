(keyboard-translate ?\C-h ?\C-?)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(prefer-coding-system 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-buffer-file-coding-system 'utf-8)
;;(set-terminal-coding-system 'utf-8)
;;(set-keyboard-coding-system 'utf-8)
(set-language-environment "Japanese")

(setq make-backup-files nil)
(setq default-frame-alist '((width . 100) (height . 60)))
(set-frame-parameter nil 'alpha '(95 70))
(setq mac-mouse-wheel-smooth-scroll t)
(set-cursor-color "DarkGray")

(create-fontset-from-ascii-font "Menlo-12:weight=normal:slant=normal" nil "menlokakugo")
(set-fontset-font "fontset-menlokakugo"
	'unicode
	(font-spec :family "Hiragino Kaku Gothic ProN" :size 14)
	nil
	'append)
(add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))

(when (require 'skk nil t)
  (global-set-key (kbd "C-x j") 'skk-auto-fill-mode)
  (global-set-key (kbd "C-x C-j") 'skk-mode)
  (setq default-input-method "japanese-skk")
  (setq skk-user-directory "~/emacs/SKK")
  (setq skk-init-file "~/emacs/SKK/init")
  (require 'skk-study))

(setenv "PATH" (concat "/usr/local/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/smlnj/bin"  exec-path))
