;; Org-mode stuff
; https://github.com/integral-dw/org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook #'org-bullets-mode)

; 't, 'time do same thing
; nil gives no time stamp, 'note adds a note (but can't I just add one myself?)
(setq org-log-done 'time)

; time format: https://www.gnu.org/software/emacs/manual/html_node/elisp/Time-Parsing.html

; https://emacs.stackexchange.com/questions/19863/how-to-set-my-own-date-format-for-org
(setq-default org-display-custom-times t)
(setq org-time-stamp-custom-formats '("<%Y-%m-%d>" . "<%a %b %e %Y-%m-%d_%H:%M:%S>"))


; https://emacs.stackexchange.com/questions/21174/check-box-add-date-in-org-mode
(defun date-hook-fn ()
  (goto-char (line-end-position))
  (insert (format-time-string " : %Y-%m-%d")))

;; This will insert date
(defun date-ekm-fn ()
  (interactive)
  (goto-char (line-end-position))
  (insert (format-time-string " : %Y-%m-%d_%H:%M:%S")))

;; https://old.reddit.com/r/emacs/comments/43vfl1/enable_wordwrap_in_orgmode/
(add-hook 'org-mode-hook #'toggle-word-wrap)
; the snippet below turns on word wrap for org, from https://www.emacswiki.org/emacs/VisualLineMode
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)
; (add-hook 'org-checkbox-statistics-hook 'date-hook-fn)



; EOF

