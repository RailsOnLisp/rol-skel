;;  Routes for mentats
;;
;;  Each route binds a uri template to a controller form.

(clear-routes)

(define-assets-route "/assets{/name}{.digest,ext}" "public/assets{/name}{.digest,ext}")

(define-route "/" `(/home))
