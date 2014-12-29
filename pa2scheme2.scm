(define (print . args)
  (cond ((not (null? args))
         (display (car args))
         (apply print (cdr args)))))

(define (dbl_atm atm lst)
  (cond ((not (null? lst))
    (cond ((list? lst)
      ; lst a list
      (if (list? (car lst))
        ; car lst is a list, then package them
        (list (append (dbl_atm atm (car lst)) (dbl_atm atm (cdr lst))))
        ; car lst not a list
        (append (dbl_atm atm (car lst)) (dbl_atm atm (cdr lst)))))
      ; lst an atom
      (else (cond ((equal? atm lst)
        ; duplicate list (a a)
        (append (list atm) (list atm)))
        ; else, just return
        (else (list lst))))))
    ; null, then return empty list
    (else '())))

(dbl_atm 'a '(a (b c a (a d))))
