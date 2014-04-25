(setq custom-file "~/configuration/emacs/custom.el")
(load custom-file)

(show-paren-mode 1)
(require 'ido)
(ido-mode t)

;; Protobuf mode -- TODO: ensure this is present (?)
(add-to-list 'load-path "/usr/local/Cellar/protobuf/2.5.0/share/doc/protobuf/editors")
(autoload 'protobuf-mode "protobuf-mode" "Protobuf mode" t )
(setq auto-mode-alist (cons '("\\.proto\\'" . protobuf-mode) auto-mode-alist))

;; Rust mode -- TODO: ensure this is present (?)
(add-to-list 'load-path "~/code/rust/src/etc/emacs/")
(require 'rust-mode)

;; PHP mode -- TODO: ensure this is present!
(autoload 'php-mode "php-mode" "PHP mode" t)
(setq auto-mode-alist (cons '("\\.php\\'" . php-mode) auto-mode-alist))

;; Load ruby mode when needed -- TODO: move this!
(add-to-list 'load-path "~/.emacs.d/ruby")
(autoload 'ruby-mode "ruby-mode" "Ruby mode" t)
;; Assign .rb and .rake files to use ruby mode
(setq auto-mode-alist (cons '("\\.rb\\'" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake\\'" . ruby-mode) auto-mode-alist))
;; Show syntax highlighting when in ruby mode
(add-hook 'ruby-mode-hook '(lambda () (font-lock-mode 1)))

;; Markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; LaTeX mode
(add-hook 'latex-mode-hook '(lambda () (auto-fill-mode 1) (flyspell-mode 1)))
