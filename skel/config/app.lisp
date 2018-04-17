(setf *port* 4207)
(setf *layout* :main)
(setf *session-timeout* (* 3600 24 7))
(setf facts:*db-path* #P"data/@{NAME}")

(define-template-var title
    "@{NAME}")

(defun setup-environment (env)
  (log-msg :INFO "setup environment ~A" (string-downcase env))
  (case env
    ((:development)
     #+swank
     (setf (debug-p :conditions) t)
     (setf (debug-p :app) t)
     (setf (debug-p :assets) t)))
  (log-msg :DEBUG "tags:~{ ~A~}" cl-debug::*debug*))
