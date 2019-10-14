;; This is a controller, define functions and route to them in config/routes.lisp

(defun /home ()
  (template-let ((title "@{NAME}"))
    (render-view :home :index '.html)))
