;;; neotree
(require-package 'all-the-icons)
(require-package 'neotree)
(setq neo-smart-open t)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;; markdown
;;;(setq markdown-command "/usr/local/bin/markdown")


;;;---kill this buffer
(defun bjm/kill-this-buffer ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

(global-set-key (kbd "C-x k") 'bjm/kill-this-buffer)

;;;---kill all buffers
(defun kill-all-buffers ()
  (interactive)
  (dolist (cur (buffer-list))
    (kill-buffer cur)))
(global-set-key (kbd "C-x K") 'kill-all-buffers)

;;;---linux emacs command to meta
;;;---(setq x-super-keysym 'meta)

(provide 'init-local)
