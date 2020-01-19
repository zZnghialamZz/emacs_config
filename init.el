;;; init.el --- init file for emacs
;; 
;; ██████╗░███████╗███╗░░██╗░██████╗░██╗░░░██╗██╗███╗░░██╗  
;; ██╔══██╗██╔════╝████╗░██║██╔════╝░██║░░░██║██║████╗░██║  
;; ██████╔╝█████╗░░██╔██╗██║██║░░██╗░██║░░░██║██║██╔██╗██║  
;; ██╔═══╝░██╔══╝░░██║╚████║██║░░╚██╗██║░░░██║██║██║╚████║  
;; ██║░░░░░███████╗██║░╚███║╚██████╔╝╚██████╔╝██║██║░╚███║  
;; ╚═╝░░░░░╚══════╝╚═╝░░╚══╝░╚═════╝░░╚═════╝░╚═╝╚═╝░░╚══╝  
;; 
;; ███████╗███╗░░░███╗░█████╗░░█████╗░░██████╗
;; ██╔════╝████╗░████║██╔══██╗██╔══██╗██╔════╝
;; █████╗░░██╔████╔██║███████║██║░░╚═╝╚█████╗░
;; ██╔══╝░░██║╚██╔╝██║██╔══██║██║░░██╗░╚═══██╗
;; ███████╗██║░╚═╝░██║██║░░██║╚█████╔╝██████╔╝
;; ╚══════╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░╚═════╝░

;; Author: Nghia Lam
;;
;; This file is developed based on the author coding habit.
;; This may not be suitable for some people.

;;; Commentary:
;;
;; Init file for Emacs settings
;;

;;; Code:
;; --------------------------------------------------------
;; General Setting
;; --------------------------------------------------------

;; Package archives
(package-initialize)
(setq package-archives
      '(("gnu"   . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/"))
)

;; Load path
(defun update-load-path (&rest _)
  "Update `load-path'."
  (push (expand-file-name "lisp" user-emacs-directory) load-path)
  (push (expand-file-name "site_lisp" user-emacs-directory) load-path)
)
(update-load-path)

;; Setting Interface
(require 'setup_misc)
(require 'setup_base)
(require 'setup_package)
(require 'setup_ui)
(require 'setup_ido)

;; --------------------------------------------------------
;; Coding Setup
;; --------------------------------------------------------

;; ###### Emacs Util ##### ;;
(require 'setup_org)
(require 'setup_keyboard)
(require 'setup_ivy)
(require 'setup_projectile)
(require 'setup_git)
(require 'setup_company)

;; ##### Emacs Lisp ###### ;;
(require 'setup_lisp)

;; END Lisp --------

;; ######### C++ ######### ;;

(require 'setup_flycheck)
(require 'setup_irony)
(require 'setup_cmake)

;; Style guide
(require 'setup_clangformat)
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; END C++ --------


;; ####### Markdown ####### ;;
(require 'setup_markdown)

;; END Markdown --------



;;; init.el ends here
