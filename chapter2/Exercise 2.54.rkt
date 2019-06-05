#lang sicp
(define (equal?  a b)
    (cond ((and (pair? a) (pair? b)) (list-equal? a b))
        ((and (not (pair? a)) (not (pair? b))) (eq? a b ))
        (else #f)
    )
)

(define (list-equal? a b)
    (if (null? a )
        (if (null? b)
            #t
            #f)
        (if (null? b)
            #f
            (if (eq? (car a) (car b))
            (list-equal? (cdr a) (cdr b))
            #f))
        ))

(equal? '(red blue yellow) '(red blue yellow))