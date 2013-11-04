;;Last Modified: 2013-11-04 10:20:06.
(add-to-list 'load-path "~/emacs-config")
(add-to-list 'load-path "~/emacs-config/ibus-el-0.3.2/")
(add-to-list 'load-path "~/emacs-config/emms-3.0/")
(add-to-list 'load-path "~/emacs-config/color-theme-6.6.0/");;emacs颜色主题包
(add-to-list 'load-path "~/emacs-config/auctex-11.87/")
(add-to-list 'load-path "~/emacs-config/auctex-11.87/preview")
(add-to-list 'load-path "~/emacs-config/jdee/");;Java集成开发环境JDEE


(load "myemacs.el" nil t t);;自己的个性化配置文件
(load "java-config.el" nil t t);; including cedet,jdee and elib
(load "preview-latex.el" nil t t);;for preview latex
(load "auctex.el" nil t t);;for latex support
(load "emacsExpert.el" nil t t);;professional configuration

(require 'unicad);;多个字符集在emacs下显示的问题
(require 'sdcv);;emacs下的字典接口
(require 'ibus);;emacs下的输入法
(add-hook 'after-init-hook 'ibus-mode-on)
(setq ibus-cursor-color '("red" "blue" "limegreen"))
(require 'init-emms)
(require 'color-theme)
(color-theme-initialize)
(color-theme-sitaramv-nt);;select one color theme

;;(load-file "~/emacs-config/my-java-code.el") ;;java自动补全，暂时不用
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(LaTeX-command "xelatex")
 '(TeX-master "weka.tex"))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;;(add-to-list 'load-path "~/emacs-config/ess-13.09/lisp/");;emacs for r language
;;(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/ess/")

