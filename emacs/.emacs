(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq-default truncate-lines t)

(require 'package)
(add-to-list 'package-archives 
	     '("marmalade" .
	       "http://marmalade-repo.org/packages/"))
(package-initialize)

(show-paren-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :font "Anonymous Pro" :height 110)

(add-hook 'lisp-mode-hook #'paredit-mode)

(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
(add-hook 'emacs-lisp-mode-hook #'turn-on-eldoc-mode)

(setq inferior-lisp-program "/usr/local/bin/sbcl")
(add-to-list 'load-path "~/slime/")
(require 'slime)
(slime-setup)

(add-hook 'lisp-mode-hook #'pretty-lambda-mode)

(setq-default indent-tabs-mode nil)
(setq-default ruby-indent-level 4)
