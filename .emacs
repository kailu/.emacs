(setq make-backup-files nil)
;;(set-default-font "Bitstream Vera Sans Mono-11")
(set-default-font "Monaco-14")
(add-to-list 'default-frame-alist
	     '(font . "Monaco-14"))
;;setting for tab


(show-paren-mode t)
(setq inhibit-startup-message t)


;;(setq auto-mode-alist (cons '("*". linum-mode) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.H[h]$". c++-mode)) auto-mode-alist))

(transient-mark-mode t)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; This from a japanese individual.  I hope it works.
(setq default-buffer-file-coding-system 'utf-8)


(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(setq password-cache-expiry 3600000)

(global-linum-mode t)


;;mapping command key to meta key for mac
(setq ns-command-modifier (quote meta))


(setq backup-inhibited t)
(setq auto-save-default nil)

(set-frame-parameter (selected-frame) 'alpha (list 100 100))
;;(add-to-list 'default-frame-alist (cons 'alpha (list 80 80)))

(set-language-environment 'UTF-8)


(setq org-publish-project-alist
      '(
        ;; These are the main web files
        ("video-ssp"
         :base-directory (expand-file-name "~/docs/video-ssp") ;; Change this to your local dir
         :base-extension "org"
         :publishing-directory (expand-file-name "~/docs/video-ssp/html")
         :recursive t
	       :publishing-function org-html-publish-to-html
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble nil
         :auto-sitemap t
         :sitemap-filename "sitemap.org"
         :sitemap-title "sitemap"
         :section-numbers nil
         :table-of-contents t
         :style "<link rel='stylesheet' type='text/css' href='css/org-manual.css' />"
         :style-include-default nil
         )

        ;; These are static files (images, pdf, etc)
        ("org-static"
         :base-directory "/Users/kailu/docs/video-ssp" ;; Change this to your local dir
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|txt\\|asc"
         :publishing-directory (expand-file-name "~/docs/video-ssp/html")
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("org" :components ("video-ssp" "org-static"))
        )
      )

;; (defun org-web-publish nil
;;   "Publish our defined org project to html."
;;   (interactive)
;;   (org-publish-all))


