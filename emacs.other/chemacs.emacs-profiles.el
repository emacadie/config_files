;;  emacs --with-profile my-profile
;; ~/.emacs-profiles.el -> part of chemacs
;; for git purposes, saved to ~/chemacs.emacs-profiles.el
(("default" .        ((user-emacs-directory . "~/github/config_files/emacs")))
; alias emacs-brave='emacs --with-profile brave'
 ("brave" .          ((user-emacs-directory . "/home/ericm/emacs/brave")))
; alias emacs-dgutov='emacs --with-profile dgutov'
; this one has errors
("dgutov" . ((user-emacs-directory . "/home/ericm/emacs/dgutov")))
("my-simple-mode" . ((user-emacs-directory . "~/emacs/my.simple.mode")))
; alias emacsprelude='emacs --no-window-system --with-profile prelude'
 ("prelude" .        ((user-emacs-directory . "~/emacs/prelude")))
; alias emacsspacemacs='emacs --no-window-system --with-profile spacemacs'
 ("spacemacs" .      ((user-emacs-directory . "~/emacs/spacemacs")))
; alias emacsyayevil='emacs --no-window-system --with-profile yay-evil-emacs'
 ("yay-evil-emacs" . ((user-emacs-directory . "~/emacs/yay-evil-emacs")))
 )
