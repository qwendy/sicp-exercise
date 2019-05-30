#lang sicp
(define (pick-7 x)
    (cond   ((null? x)  0)
            ((not (pair? x)) (if (= x 7)
                1
                0))
            (else (+    (pick-7 (car x))
                        (pick-7 (cdr x))))
    )
)


(pick-7 (list 1 3 (list 5 7) 9))