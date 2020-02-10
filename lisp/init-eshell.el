;;;;;;;;;;
;; eshell configuration


;;;; clear shell in eshell
(defun eshell-clear-buffer ()
  "Clear terminal"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))
(add-hook 'eshell-mode-hook
      '(lambda()
	 (local-set-key (kbd "C-l") 'eshell-clear-buffer)))


(provide 'init-eshell)