(setq gc-cons-threshold 64000000)
(add-hook 'after-init-hook (lambda ()
                            ;; restore after startup
                            (setq gc-cons-threshold 800000)))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(setq custom-file "~/.dotfiles/emacs/emacs-custom.el")
(add-to-list 'load-path "~/.dotfiles/emacs/")
(load "~/.emacs.d/settings.el")
(load "~/.emacs.d/keybinds.el")
(put 'narrow-to-region 'disabled nil)
