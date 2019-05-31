#lang sicp

(define (accumulate f null-value seq)
    (if (null? seq)
        null-value
        (begin
                (f  (car seq)
                    (accumulate f null-value (cdr seq))))
        ))

(define (count-leaves t)
    (accumulate +
                0
                (map    (lambda (x) (if (pair? x)
                                    (count-leaves x)
                                    1))
                        t)))

(define exp-list
    (list  1
                (list 2 (list 3 4) 5)
                (list 6 7)))

(count-leaves exp-list)


(define (square-lst t)
    (map    (lambda (x) (if (pair? x)
                            (square-lst x)
                            (* x x))) t)
)

(square-lst exp-list)