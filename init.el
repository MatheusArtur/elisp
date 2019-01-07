;; Lisp configs
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("43b219a31db8fddfdc8fdbfdbd97e3d64c09c1c9fdd5dff83f3ffc2ddb8f0ba0" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "44247f2a14c661d96d2bff302f1dbf37ebe7616935e4682102b68c0b6cc80095" "9fcac3986e3550baac55dc6175195a4c7537e8aa082043dcbe3f93f548a3a1e0" "38e66a2a20fa9a27af5ffc4f4dd54f69e3fef6b51be7b351e137b24958bfebd7" "bcd8b3fc2d82d764a9692c754485344257caf017d3fbdfb18f4db022a7b9a58f" "08f5da7e1f5064a2917af94f0dab946adfb25665b25450168ded749ec78a1145" "cde05ed51346d6925d29311fb131511115ae7612764297077ca1b61371e6b047" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "c30d153e623dfe32184857790a0cad243b979e8b1104e057c4a6ffe2210856f7" default)))
 '(fci-rule-color "#222222")
 '(jdee-server-dir "~/.emacs.d/jdee-server")
 '(package-selected-packages
   (quote
    (erc-hl-nicks elcord popup-kill-ring avy mark-multiple magit emms projectile pretty-mode slime-company slime yasnippet-snippets yasnippet flycheck-clang-analyzer flycheck irony company-irony company-c-headers diminish spaceline company sudo-edit hungry-delete switch-window linum-relative dmenu fancy-battery exwm dashboard smex ido-vertical-mode org-bullets beacon spacemacs-theme which-key use-package)))
 '(pdf-view-midnight-colors (quote ("#ffffff" . "#222222")))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(vc-annotate-background "#222222"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#292b2e" :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 102 :width normal :foundry "xos4" :family "xos4 Terminus")))))
