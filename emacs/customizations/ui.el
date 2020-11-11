;; These customizations change the way emacs looks and disable/enable
;; some user interface elements. Some useful customizations are
;; commented out, and begin with the line "CUSTOMIZE". These are more
;; a matter of preference and may require some fiddling to match your
;; preferences

;; Turn off the menu bar at the top of each frame because it's distracting
(menu-bar-mode -1)

;; Show line numbers
(global-linum-mode)


;; You can uncomment this to remove the graphical toolbar at the top. After
;; awhile, you won't need the toolbar.
;; (when (fboundp 'tool-bar-mode)
;;   (tool-bar-mode -1))

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Color Themes
;; Read http://batsov.com/articles/2012/02/19/color-theming-in-emacs-reloaded/
;; for a great explanation of emacs color themes.
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Custom-Themes.html
;; for a more technical explanation.
(add-to-list 'custom-theme-load-path "/home/ericm/github/config_files/emacs/themes/")
(add-to-list 'load-path "/home/ericm/github/config_files/emacs/themes/")
; (load-theme 'bubbleberry t) ; dark
; (load-theme 'chyla t) ; light, contrast could be better in -nw
; (load-theme 'emacs-nw t) ; not good in -nw
(load-theme 'espresso t) ; I like in -nw
; (load-theme 'high-contrast t) ; do not like in -nw
; (load-theme 'inkpot t) ; blue
; (load-theme 'leuven t) ; okay
; (load-theme 'mccarthy t) ; not good contrast in -nw
; (load-theme 'molokai t) ; dark
; (load-theme 'naquadah t) ; dark
; (load-theme 'tsdh-light t) ; do not like in -nw
; (load-theme 'tomorrow-night-bright t) ; dark
; (load-theme 'twilight t) ; reverse colors, kind of implied by the name
; (load-theme 'ujelly t) ; low contrast is the road to hell
; (load-theme 'vim-colors t) ; this might be perfect, except line numbers are same color as text in -nw
; (load-theme 'whiteboard t) ; not the best contrast in -nw
;; https://emacsthemes.com/themes/vim-colors-theme.html
;; must be installed from https://github.com/emacs-jp/replace-colorthemes/blob/master/vim-colors-theme.el
;; bubbleberry-theme.el - dark
;; chyla-theme.el - okay
;; color-theme-molokai.el - problems
;; color-theme-tomorrow.el
;; 'emacs-nw - gray background in nw
;; espresso-theme.el - okay
;; high-contrast-theme.el - okay in terminal
;; inkpot-theme.el - not good contrast
;; leuven-theme.el - okay
;; mccarthy-theme.el - bad contrast on active line
;; molokai-theme.el - no rainbow on Clojure
;; naquadah-theme.el - kinda dark
;; tango-plus-theme.el - light, no parens highlights
;; tomorrow-night-blue-theme.el
;; tomorrow-night-bright-theme.el
;; tomorrow-night-eighties-theme.el
;; tomorrow-night-theme.el
;; tomorrow-theme.el
;; tsdh-light-theme.el - bad contrast when called with -nw, okay otherwise
;; twilight-theme.el - okay
;; ujelly-theme.el - bad contrast on linux laptop
;; zenburn-theme.el - 


;; increase font size for better readability
(set-face-attribute 'default nil :height 140)

;; Uncomment the lines below by removing semicolons and play with the
;; values in order to set the width (in characters wide) and height
;; (in lines high) Emacs will have whenever you start it
(setq initial-frame-alist '((top . 0) (left . 0) (width . 177) (height . 53)))

;; These settings relate to how emacs interacts with your operating system
(setq ;; makes killing/yanking interact with the clipboard
      x-select-enable-clipboard t

      ;; I'm actually not sure what this does but it's recommended?
      x-select-enable-primary t

      ;; Save clipboard strings into kill ring before replacing them.
      ;; When one selects something in another program to paste it into Emacs,
      ;; but kills something in Emacs before actually pasting it,
      ;; this selection is gone unless this variable is non-nil
      save-interprogram-paste-before-kill t

      ;; Shows all options when running apropos. For more info,
      ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Apropos.html
      apropos-do-all t

      ;; Mouse yank commands yank at point instead of at click.
      mouse-yank-at-point t)

;; No cursor blinking, it's distracting
(blink-cursor-mode 0)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))

;; no bell
(setq ring-bell-function 'ignore)

;; after loading theme
; (custom-set-faces  '(line-number-current-line ((t (:inherit line-number :background "white" :foreground "red")))))
; (set-face-foreground 'line-number "#FF0000")
; (set-face-foreground 'line-number-current-line "#00FF00")


