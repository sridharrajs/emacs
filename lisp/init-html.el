;;; init-html --- Summary

;;; Commentary:
;;; Configuration for HTML

;;; Code:


(eval-after-load "sgml-mode"
  '(progn
     (define-key sgml-mode-map (kbd "<tab>") 'emmet-expand-line)))

(add-to-list 'auto-mode-alist '("\\.html\\'" . sgml-mode))
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . sgml-mode))

(add-hook 'sgml-mode-hook  'autopair-mode)
(add-hook 'sgml-mode-hook  'emmet-mode)

(provide 'init-html)
;;; init-html ends here
