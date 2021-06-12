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
  (insert (format-time-string "%Y-%m-%d_%H:%M:%S")))

;; insert "[/][%]" at the end of an item, and set to "DONE"
;; You have to run org-todo
(defun ekm-insert-org-list-stats ()
  (interactive)
  (goto-char (line-end-position))
  (insert " [/][%]")
  (org-ctrl-c-ctrl-c))

;; https://old.reddit.com/r/emacs/comments/43vfl1/enable_wordwrap_in_orgmode/
(add-hook 'org-mode-hook #'toggle-word-wrap)
; the snippet below turns on word wrap for org, from https://www.emacswiki.org/emacs/VisualLineMode
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)
; (add-hook 'org-checkbox-statistics-hook 'date-hook-fn)

; https://np.reddit.com/r/backtickbot/comments/m6zid7/httpsnpredditcomrorgmodecommentsm6ymgkbook/
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
; (add-hook 'org-after-todo-statistics-hook #'org-summary-todo)

;; https://orgmode.org/manual/TODO-dependencies.html#TODO-dependencies
;; If you call org-toggle-ordered-property on a list of TODO items, they will have to be done in order
;; with this set to "t"
(set-variable 'org-enforce-todo-dependencies t)

;; https://orgmode.org/manual/Breaking-Down-Tasks.html
;; If you would like a TODO entry to automatically change to DONE when all children are done, you can use the following setup:
;; note: You need to add the stat viewers to a TODO list: [/][%]
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)


;; EOF


