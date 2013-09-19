(deftheme arrsim-custom
  "tsdh-dark customisations")

(custom-theme-set-variables
 'arrsim-custom
 '(rst-level-face-base-color "grey25"))

(custom-theme-set-faces
 'arrsim-custom

 '(highlight ((t (:background "grey25"))))
 '(font-lock-type-face ((t (:foreground "OliveDrab1"))))
 '(highlight-indentation-face ((t (:background "grey25"))))

 '(mode-line ((t (:family "Nimbus Sans L" :height 1.1
                          :box (:line-width 2 :color "red")
                          :background "gray30"))))
 '(mode-line-inactive ((t (:inherit mode-line :foreground "dark gray"
                                    :box (:line-width 2 :color "dark red")))))

 ;; mumamo-mode
 '(mumamo-background-chunk-major ((t (:background "#2e3436"))))
 '(mumamo-background-chunk-submode1 ((t (:background "grey30"))))
 '(mumamo-background-chunk-submode2 ((t (:background "grey30"))))
 '(mumamo-background-chunk-submode3 ((t (:background "grey30"))))
 '(mumamo-background-chunk-submode4 ((t (:background "grey30"))))

 ;; artbollock-mode
 '(font-lock-passive-voice-face ((t (:stipple nil :inverse-video nil :underline "gold" :slant italic))))
 '(font-lock-lexical-illusions-face ((t (:underline "limegreen" :weight bold :slant italic :inverse-video nil :stipple nil))))
 '(font-lock-weasel-words-face ((t (:weight bold :slant italic :inverse-video nil :underline "Brown" :stipple nil))))
 '(font-lock-artbollocks-face ((t (:stipple nil :underline "Purple" :inverse-video nil :slant italic :weight bold))))
 '(flymake-infoline ((t (:background "#00472b"))))
 '(flymake-warnline ((t (:background "#001B63"))))

 ;; erc
 '(erc-default-face ((t (:foreground "green"))))
 '(erc-prompt-face ((t (:inherit minibuffer-prompt))))
 '(erc-timestamp-face ((t (:inherit (font-lock-string-face)))))
 '(erc-notice-face ((t (:slant italic :foreground "grey50"))))
 '(erc-current-nick-face ((t (:foreground "dodgerblue" :weight bold))))
 '(erc-my-nick-face ((t (:foreground "dodgerblue" :weight bold))))
 '(erc-nick-msg-face ((t (:foreground "red"))))

 ;; slime
 '(slime-repl-prompt-face ((t (:inherit minibuffer-prompt))))

 ;; helm
 '(helm-source-header ((t (:box 1
                                :height 1.3
                                :weight bold
                                :foreground "white"
                                :background "dark slate blue"))))
 '(helm-selection ((t (:background "grey35"))))
 '(helm-ff-directory ((t (:foreground "DodgerBlue" :weight bold))))
 '(helm-ff-executable ((t (:foreground "cornsilk"))))
 '(helm-ff-file ((t (:inherit (font-default)))))
 '(helm-ff-symlink ((t (:inherit (font-lock-keyword-face)))))
 '(helm-ff-invalid-symlink ((t (:background "red" :foreground "black"))))
 '(helm-ff-prefix ((t (:foreground "black" :background "yellow"))))

 ;; dired
 '(diredp-dir-heading ((t (:background "#00003F3F3434" :foreground "DodgerBlue" :height 1.3 :weight bold))))
 '(dired-directory ((t (:foreground "#7474FFFFFFFF" :weight bold))))
 '(dired-symlink ((t (:inherit (font-lock-keyword-face) :weight bold))))
 '(diredp-symlink ((t (:inherit (font-lock-keyword-face) :weight bold))))
 '(dired-flagged ((t (:inherit (error)))))
 '(dired-header ((t (:inherit (font-lock-type-face)))))
 '(dired-ignored ((t (:inherit (shadow)))))
 '(dired-mark ((t (:inherit (font-lock-constant-face)))))
 '(dired-marked ((t (:inherit (warning)))))
 '(diredp-file-name ((t (:inherit (font-default)))))
 '(diredp-dir-priv ((t (:foreground "DodgerBlue" :weight bold))))
 '(diredp-exec-priv ((t nil)))
 '(diredp-no-priv ((t nil)))
 '(diredp-rare-priv ((t (:foreground "Green"))))
 '(diredp-read-priv ((t nil)))
 '(diredp-write-priv ((t nil)))

 ;; email
 '(gnus-header-content ((t (:foreground "#A64B00" :height 1.1))))
 '(gnus-header-name ((t (:weight bold :height 1.2))))
 '(gnus-header-subject ((t (:foreground "yellow green" :weight bold :height 1.4))))

 ;; Jabber
 '(jabber-roster-user-online ((t (:foreground "light sea green" :weight bold))))
 '(jabber-roster-user-away ((t (:foreground "cornflower blue"))))
 '(jabber-roster-user-xa ((t (:foreground "medium purple"))))
 '(jabber-rare-time-face ((t (:foreground "#4671D5"))))
 '(jabber-chat-prompt-local ((t (:foreground "light sea green"))))
 '(jabber-chat-prompt-foreign ((t (:foreground "indian red"))))
 '(jabber-chat-prompt-system ((t (:foreground "light salmon"))))
 '(jabber-chat-error ((t (:foreground "hot pink"))))

 ;; gnus
 '(gnus-button ((t (:inherit button))))
 '(gnus-cite-1 ((t (:foreground "dark turquoise"))) t)
 '(gnus-group-mail-1 ((t (:inherit gnus-group-mail-1-empty :weight bold))))
 '(gnus-group-mail-1-empty ((t (:foreground "#00CC00"))))
 '(gnus-group-mail-3 ((t (:inherit gnus-group-mail-3-empty :weight bold))))
 '(gnus-group-mail-3-empty ((t (:foreground "#009999"))))
 '(gnus-group-news-3 ((t (:inherit gnus-group-news-3-empty :weight bold))))
 '(gnus-group-news-3-empty ((t (:foreground "light green"))))
 '(gnus-header-content ((t (:foreground "#A64B00"))))
 '(gnus-header-name ((t (:weight bold))))
 '(gnus-header-subject ((t (:foreground "#A64B00" :weight bold))))
 '(gnus-summary-high-ancient ((t (:foreground "#A64B00" :weight bold))))
 '(gnus-summary-low-ancient ((t (:foreground "medium turquoise" :slant italic))))
 '(gnus-summary-low-read ((t (:foreground "dark sea green" :slant italic))))

 ;; Ansi Term
 '(term-color-black ((t (:foreground "gray20" :background "gray20"))))
 '(term-color-red ((t (:foreground "indian red" :background "indian red"))))
 '(term-color-green ((t (:foreground "light sea green" :background "light sea green"))))
 '(term-color-yellow ((t (:foreground "light salmon" :background "light salmon"))))
 '(term-color-blue ((t (:foreground "dodger blue" :background "dodger blue"))))
 '(term-color-cyan ((t (:foreground "yellow green" :background "yellow green"))))
 '(term-color-magenta ((t (:foreground "hot pink" :background "hot pink")))))

(provide-theme 'arrsim-custom)
