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

(define dx 0.000001)

(define (smoothed  f)
    (lambda (x) (/ (+  (f x)
                        (f (- x dx))
                        (f (+ x dx)))
                    3))
)



(define (square x)
    (* x x))

(((repeated smoothed 2) square) 5)