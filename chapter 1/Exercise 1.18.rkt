#lang sicp
(define (double x)
    (+ x x))
(define (halve x)
    (/ x 2))

(define (even? n)
    (= (remainder n 2) 0))

(define (* a b accumulator)
    (cond ((= b 0) accumulator)
        ((even? b)  (* (double a) (halve b)  accumulator))
        (else (* a (- b 1) (+ a accumulator)))
        )
)

(* 4 8 0)
(* 4 9 0)