; Emacs Prelude customizations
; https://prelude.emacsredux.com/en/latest/configuration/
; /home/ericm/emacs/prelude/personal/custom.el  


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (org-bullets paredit racket-mode yaml-mode racket web-mode lsp-ui lsp-mode zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens rainbow-mode rainbow-delimiters projectile operate-on-number nlinum move-text magit json-mode js2-mode imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region exec-path-from-shell elisp-slime-nav editorconfig easy-kill discover-my-major diminish diff-hl crux counsel company browse-kill-ring anzu ag ace-window)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; if used elsewhere, may need to change paths
(disable-theme 'zenburn)
(add-to-list 'custom-theme-load-path "/home/ericm/github/config_files/emacs/themes/")
(add-to-list 'load-path "/home/ericm/github/config_files/emacs/themes/")
; (load-theme 'andreas t) ; do not like in nw
; (load-theme 'bubbleberry t) ; dark
; (load-theme 'commentary t) ; I like in -nw
; (load-theme 'chyla t) ; light, contrast could be better in -nw
; (load-theme 'dichromacy t) ; do not like; it looked totally different in https://pawelbx.github.io/emacs-theme-gallery/
; (load-theme 'emacs-nw t) ; not good in -nw
; https://github.com/dgutov/espresso-theme
; https://melpa.org/#/espresso-theme
(load-theme 'ekm t)
; (load-theme 'espresso t) ; I like in -nw
(setq prelude-whitespace nil)
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'racket-mode-hook           #'enable-paredit-mode)
(add-hook 'racket-repl-mode-hook      #'enable-paredit-mode)

;; Org-mode stuff
; https://github.com/integral-dw/org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook #'org-bullets-mode)




