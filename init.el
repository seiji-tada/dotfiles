(keyboard-translate ?\C-h ?\C-?)
(setq dired-use-ls-dired nil)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(prefer-coding-system 'utf-8)
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
  (setq skk-user-directory "~/.emacs.d/share/skk")
  (setq skk-init-file "~/.emacs.d/share/skk/init")
  (require 'skk-study))

(exec-path-from-shell-initialize)

(require 'auto-complete-config)
(ac-config-default)

(add-hook 'python-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (setq indent-level 4)
	     (setq python-indent 4)
	     (setq tab-width 4)
	     (py-autopep8-enable-on-save)
           ))
