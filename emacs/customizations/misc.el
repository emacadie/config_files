;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; Org-mode stuff
(setq org-log-done 'time)

(add-to-list 'auto-mode-alist '("\.rkt$" . racket-mode))
(add-to-list 'auto-mode-alist '("\.go$" . go-mode))



                                        ; EOF
