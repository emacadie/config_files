;;; XEmacs backwards compatibility file

;;(setq user-init-file
;;      (expand-file-name "init.el"
;;			(expand-file-name ".xemacs" "~")))
;;(setq custom-file
;;      (expand-file-name "custom.el"
;;			(expand-file-name ".xemacs" "~")))

;;(load-file user-init-file)
;;(load-file custom-file)

;; from Pat Bacon
;(setq load-path (cons "~/emacs" load-path))
;(require 'cc-mode)


(setq-default auto-fill-function 'do-auto-fill)
(setq column-number-mode t) 
(setq indent-tabs-mode nil) ; We want tabs as spaces
(setq transient-mark-mode t)
;; I think changing next line can make the lines longer
(setq fill-column 79)
(setq make-backup-files nil)	;; don't create the ~ files

(fset 'yes-or-no-p 'y-or-n-p)

(global-set-key (quote [f2]) (quote goto-line))
(global-set-key (quote [f3]) (quote compile))
(global-set-key (quote [f4]) (quote rm-set-mark))
(global-set-key (quote [f5]) (quote rm-kill-region))
(global-set-key (quote [f6]) (quote scroll-to-top))
(global-set-key (quote [f7]) (quote kill-this-buffer))
(global-set-key (quote [f8]) (quote nt-print-buffer))
(global-set-key (quote [f9]) (quote revert-buffer))
(global-set-key (quote [f12]) (quote electric-buffer-list))


;; ------------ THIS SECTION CONTROLS COLOR
;;(cond ((fboundp 'global-font-lock-mode)
       ;; Customize face attributes
       ;; (setq font-lock-face-attributes
             ;; Symbol-for-Face Foreground Background Bold Italic Underline
             ;; '((font-lock-comment-face       "DarkGreen")
               ;; (font-lock-string-face        "Sienna")
               ;; (font-lock-keyword-face       "RoyalBlue")
               ;; (font-lock-function-name-face "Blue")
               ;; (font-lock-variable-name-face "Black")
               ;; (font-lock-type-face          "Black")
               ;; (font-lock-reference-face     "Purple")
               ;; ))
       ;; Load the font-lock package.
       ;; (require 'font-lock)
       ;; Maximum colors
       ;; (setq font-lock-maximum-decoration t)
       ;; Turn on font-lock in all modes that support it
       ;; (global-font-lock-mode t)))
;; ----------- END COLOR SECTION

; C styles for indentation:
; bsd cc-mode ellemtel gnu java k&r
; linux python stroustrup user whitesmith 

(defun my-c-mode-common-hook ()
  ;; use bsd style for all C like languages
  (c-set-style "bsd") 
  ;; other customizations can go here
  (setq indent-tabs-mode nil) ; We want tabs as spaces
  (define-key c-mode-base-map "\C-m" 'newline-and-indent)
  (set-fill-column 79)
  )
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;(custom-set-variables
; '(jde-bug-vm-includes-jpda-p t))
;(custom-set-faces)

