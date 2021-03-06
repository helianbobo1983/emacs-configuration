;;Last Modified: 2013-11-10 13:48:00.
;;全屏函数。
(defun my-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil 
			 "_NET_WM_STATE" 32
			 '(2 "_NET_WM_STATE_FULLSCREEN" 0))
  )
;; 定义了一个最大化emacs窗口的函数
(defun my-maximized ()
  (interactive)
  (x-send-client-message   nil 0 nil "_NET_WM_STATE" 32
			   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (interactive)
  (x-send-client-message   nil 0 nil "_NET_WM_STATE" 32
			   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  )
;; 快捷键ctrl+0绑定全屏
(global-set-key (kbd "C-0") 'my-fullscreen)
(global-set-key (kbd "C-1") 'goto-line)
(my-maximized);;启动emacs时最大化窗口
(add-hook 'c-mode-common-hook
	  '(lambda ()
	    (require 'xcscope)))
;;下面这部分代码是在日常使用中添加的
(setq x-select-enable-clipboard t);;支持xserver和emacs间互相拷贝文本
(define-key ctl-x-map "l" 'goto-line);;在emacs中按C-x再按l，输入指定的行号就可以了
(global-set-key (kbd "C-c C-p") 'beginning-of-buffer);;缓冲区的头部
(global-set-key (kbd "C-c C-n") 'end-of-buffer);;缓冲区的尾部
(defun insert-two-percentages () 
  "inset two %"
  (interactive)
  (insert-char ?% 2)
  )

 

;; (setq tab-width 1
;;       indent-tabs-mode t
;;       c-basic-offset 2)

(setq column-number-mode t);;display column number in minibuffer
(setq line-number-mode t);;display row number in minibuffer
;;(linum-mode nil)
(global-set-key (kbd "C-o") 'insert-two-percentages)




(global-set-key [C-tab] 'shell);;用快捷键ctrl+tab打开shell窗口
(global-set-key (kbd "C-c C-c") 'shell-command);;用快捷键打开单个shell命令 
(global-set-key (kbd "C-c C-h") 'set-mark-command);;避免使用ctrl＋@来做标记
(global-unset-key (kbd "C-@"));;避免使用ctrl＋@来做标记
(global-unset-key (kbd "C-SPC"));;避免输入法键在Emacs中起作用

(defun line-to-top-of-window ()  
  "Move line to the top of wiontndow."  
  (interactive) ;;interactive mode with key-map 
  (recenter 0)
  ) ;;set screen's top position aligned with current point.

;; set emacs "point" top of window
(global-set-key (kbd "C-c C-l") 'line-to-top-of-window)

(global-set-key (kbd "C-c ;")   'comment-region)
(global-set-key (kbd "C-c :") 'uncomment-region)
(global-font-lock-mode 1) ;;开启语法高亮。

(setq inhibit-startup-message t) ;;关闭开启画面
(setq indent-tabs-mode t)
(setq make-backup-files nil) ;;不产生备份文件
(setq frame-title-format "%b ... %f");;设置emacs的标题,文件名和缓冲区名间加更多空格
;;(set-foreground-color "orange red"); 设置前景颜色为桔黄色
(set-foreground-color "black");;设置前景颜色
(set-background-color "white");;设置背景色为白色
(set-cursor-color "black");;指针颜色设置为黑色
(set-mouse-color "black");;鼠标颜色设置为黑色
;;(display-time-mode 1);;启用时间显示设置,在mode-line上
;;(setq display-time-24hr-format t);;时间使用24小时制.
;;(setq display-time-day-and-date t);;时间显示包括日期和具体时间.
(column-number-mode t);;在mode-line上显示当前所处的列号，从0开始。   
(show-paren-mode t);;显示括号匹配
;;(highlight-parentheses-mode t);将括号匹配显示出来,方便快速定位括号.
(fset 'yes-or-no-p  'y-or-n-p);;不要问yes或no,而问我y或n  
(setq user-full-name "刘波")  ;;设置用户名是我的名字
(tool-bar-mode nil);;关闭工具栏,turn off tool bar
(menu-bar-mode nil);;turn off menu bar
(scroll-bar-mode nil);;关闭滚动条栏,turn off scroll bar
(setq-default line-spacing 4);;设置两行间的额外间距,单位为像素

(set-face-attribute 'default nil :font "Consolas-20")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
	    charset (font-spec :family "KaiTi_GB2312" :size 25)))