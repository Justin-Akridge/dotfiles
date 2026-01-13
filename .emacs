(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(evil-mode 1)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'solarized-dark t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7fea145741b3ca719ae45e6533ad1f49b2a43bf199d9afaee5b6135fd9e6f9b8"
     default))
 '(nil nil t)
 '(package-selected-packages
   '(evil evil-visual-mark-mode solarized-theme typescript-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :background "#00141a" :foreground "#9cb0b3" :foundry "outline" :slant normal :weight regular :height 120 :width normal)))))
