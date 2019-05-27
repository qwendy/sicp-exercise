#lang sicp
(define (make-rat n d)
  (define g (gcd n d))
  (cond ((> (* n d) 0) (cons (abs (/ n g)) (abs (/ d g))))
        ((< (* n d) 0) (cons (- (abs (/ n g))) (abs (/ d g))))))
(define (numer x)
    (car x))


(define (denum x)
    (cdr x))
(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denum x))
)

(define nagetive-one-half (make-rat -1 2))

(print-rat nagetive-one-half)
