;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Jason Harris"
      user-mail-address "metalnwood@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(setq doom-theme 'doom-one)
(setq doom-font (font-spec :family "JetBrainsMono" :size 22))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)
(setq display-line-numbers-type 'relative)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.

;; (use-package org-drill)
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
;; additional keybindings
;;
;;

;; (after! evil-snipe
;;   (evil-snipe-mode -1))
;; (evil-snipe-mode -1)
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)
(defun jason-center ()
   "zz but a bit higher than center"
   (interactive)
   (recenter)
   (scroll-up 8))


(map! :n "z z" #'jason-center)

(map! :leader
      ;; <leader> x will invoke the dosomething command
      "e s" #'evil-surround-region
      )

(setq send-mail-function 'sendmail-send-it
      sendmail-program "/usr/bin/msmtp"
      mail-specify-envelope-from t
      message-sendmail-envelope-from 'header
      mail-envelope-from 'header)

;; avy set dvorak keys
(setq avy-keys '(?a ?o ?e ?u ?d ?h ?t ?n ?s))
;; (setq avy-keys '(?a ?o ?e ?u ?d ?h ?t ?n ?s))
(map! :n "C-/" #'avy-goto-char-timer)
(setq avy-timeout-seconds 0.3)
(map! :n  "s" #'avy-goto-char-2)
;; (map! :n  "s" #'avy-goto-char-timer)
(map! :n  "S" #'avy-goto-word-0)
