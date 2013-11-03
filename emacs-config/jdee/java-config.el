(setq debug-on-error t)
(add-to-list 'load-path (expand-file-name "~/emacs-config/jdee/jdee-2.4.0.1/lisp"))
(add-to-list 'load-path (expand-file-name "~/emacs-config/jdee/cedet-1.0pre7/common"))
(load-file (expand-file-name "~/emacs-config/jdee/cedet-1.0pre7/common/cedet.el"))
(add-to-list 'load-path (expand-file-name "~/emacs-config/jdee/elib-1.0"))
;; If you want Emacs to defer loading the JDE until you open a 
;; Java file, edit the following line
(setq defer-loading-jde t)
(if defer-loading-jde
    (progn
      (autoload 'jde-mode "jde" "JDE mode." t)
      (setq auto-mode-alist
	    (append
	     '(("\\.java\\'" . jde-mode))
	     auto-mode-alist)))
  (require 'jde))


;; Sets the basic indentation for Java source files
;; to two spaces.
(defun my-jde-mode-hook ()
  (setq c-basic-offset 2))

(add-hook 'jde-mode-hook 'my-jde-mode-hook)

;; Include the following only if you want to run
;; bash as your shell.

;; Setup Emacs to run bash as its primary shell.
(setq shell-file-name "bash")
(setq shell-command-switch "-c")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
(setq explicit-sh-args '("-login" "-i"))


