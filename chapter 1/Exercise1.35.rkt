#lang sicp

(define tolerance 0.1)

(define (fixed-point f first-guess)
    (define (enough?  a b)
         (< (abs (- a b)) tolerance))
    (define (try guess)
        (let    ((next (f guess)))
                (if (enough? guess next)
                    next
                    (try next))))
    (try first-guess)
)

(define (f x)
    (*  (/ 1 2)
        (+ x 1 (/ 1 x))))


(fixed-point f 1)