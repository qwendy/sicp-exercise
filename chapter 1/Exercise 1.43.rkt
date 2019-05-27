#lang sicp
(define (compose f g)
    (lambda (x) (f (g x))))

(define (repeated f  n)
    (define (recursive i)
        (if (= i n)
            f
            (compose f (recursive (+ i 1)))
        ))
    (recursive 1)
)
(define (square x)
    (* x x))

((repeated square 2) 5) 