#lang sicp

(define (reverse x)
    (define (iter remain-list result)
        (cond   ((null? remain-list) result)
                ((not (pair? remain-list))  remain-list)
                (else (iter (cdr remain-list) (cons (reverse (car remain-list)) result)))
        )
    )
    (iter x nil)
)

(define x (list (list 1 2) (list 3 4)))

(reverse x)