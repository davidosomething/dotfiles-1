(setq puppet-mode-hook nil)

(defun puppet-flash-region (start end &optional timeout)
  "Temporarily highlight region from START to END."
  (let ((overlay (make-overlay start end)))
    (overlay-put overlay 'face 'secondary-selection)
    (run-with-timer (or timeout 0.2) nil 'delete-overlay overlay)))

(defun flymake-puppet-init ()
  "Construct a command that flymake can use to check puppetscript source."
  (list "puppet-lint"
        (list  "--no-autoloader_layout-check"
               (flymake-init-create-temp-buffer-copy
               'flymake-puppet-create-temp-in-system-tempdir))))


;; (add-hook 'puppet-mode-hook
;;           (lambda ()
;;             (define-key puppet-mode-map "\C-xr" 'puppet-block-align)))

;; Flycheck
(add-hook 'puppet-mode-hook 'flycheck-mode-on-safe)

;; Indent without tabs
(add-hook 'puppet-mode-hook
          (lambda ()
            (make-local-variable 'indent-tabs-mode)
            (setq indent-tabs-mode nil)))
