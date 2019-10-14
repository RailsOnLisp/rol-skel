(setf *layout* :main)
(setf *port* 4000)
(setf *session-timeout* (* 3600 24 7))
(setf facts:*db-path* #P"data/@{NAME}")

(define-template-var title
    "@{NAME}")

(require :re)
(use-package :re)

(cl-json:set-decoder-simple-clos-semantics)

(defun setup-environment (env)
  (log-msg :INFO "setup environment ~A" (string-downcase env))
  (case env
    ((:development)
     #+swank
     (setf (debug-p :conditions) t)
     (setf (debug-p :reply) t)
     (setf (debug-p :app) t)
     (setf (debug-p :assets) t)))
  (log-msg :DEBUG "tags:~{ ~A~}" cl-debug::*debug*))
