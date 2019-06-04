#lang sicp

(define (fringe x)
    (define (iter remain-list result)
        (cond ((null? remain-list) result)
            ( (not (pair? remain-list)) (cons remain-list result))
            (else (iter (cdr remain-list)  (append (fringe (car remain-list)) result)))
        )
    )
    (iter x nil)
)

(define x (list (list 1 2) (list 3 4)))
(fringe x)