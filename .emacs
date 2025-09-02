;;; -*- lexical-binding: t -*-

;; Disable startup UI elements
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Indentation settings: use spaces, width = 4
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Disable backup and autosave files
(setq make-backup-files nil)     ;; no ~ files
(setq auto-save-default nil)     ;; no #autosave# files
(setq create-lockfiles nil)      ;; no .#lock files

;; Package management
(require 'package)
(setq package-archives
      '(("gnu"    . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa"  . "https://melpa.org/packages/")))
(package-initialize)

;; Auto-install selected packages
(unless package-archive-contents
  (package-refresh-contents))

(dolist (pkg '(web-mode go-mode gruber-darker-theme))
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; Theme
(load-theme 'gruber-darker t)

;; Relative line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)

;; Font settings
(set-face-attribute 'default nil
                    :family "Iosevka"
                    :weight 'regular
                    :height 162)

;; Use web-mode for React/JSX and TSX
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . web-mode))

;; Configure web-mode for JSX/TSX
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")
        ("tsx" . "\\.ts[x]?\\'")))

;; Ensure global syntax highlighting
(global-font-lock-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 '(package-selected-packages '(web-mode gruber-darker-theme go-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
)
