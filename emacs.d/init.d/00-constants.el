;;; Some constants to check the system type
(defconst darwin-p (eq system-type 'darwin) "Are we on OSX?")
(defconst linux-p (or (eq system-type 'gnu/linux)
                      (eq system-type 'linux))
  "Are we running on a GNU/Linux system?")
(defconst console-p (eq (symbol-value 'window-system) nil)
  "Are we in a console?")


(defconst debian-p
  "Is the current system Debian or Ubuntu."
  (let ((lsb-release (executable-find "lsb_release")))
    (when lsb-release
      (member
       (cadr
        (cdr
         (split-string
          (with-temp-buffer
            (shell-command (concat lsb-release " -i")
                           (current-buffer))
            (buffer-substring (point-min) (point-max))) "[: \f\t\n\r\v]+" t)))
       '("Debian" "Ubuntu")))))

(defconst hostname
  (let ((hostname (executable-find "hostname")))
    (when hostname
      (with-temp-buffer
        (shell-command (concat hostname)
                       (current-buffer))
        (buffer-substring (point-min)
                          (save-excursion
                            (move-end-of-line nil)
                            (point))))))
  "The unqualified hostname of the computer.")
