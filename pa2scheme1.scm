(define (print . args)
  (cond ((not (null? args))
         (display (car args))
         (apply print (cdr args)))))

(define (inv_list lst)
  (cond ((not (null? lst))
    (if (list? lst)
      (append (inv_list (cdr lst)) (list (car lst)))
      ; else
      (list lst)))
  (else '())))

(define (inv_app list1 list2)
  (append (inv_list list2) (inv_list list1))
)

(inv_app '(1 2 3) '(4 5 6))