#lang sicp
(define (average x y)
    (/ (+ x y) 2))

(define (make-piont x y)
    (cons x y))

(define (x-point x)
    (car x))
(define (y-point x)
    (cdr x))

(define (make-segment x y)
    (cons x y))
(define (start-segment x)
    (car x))
(define (end-segment x)
    (cdr x))

(define (mid-segment x)
    (make-piont (average (x-point (start-segment x)) (x-point (end-segment x)))
                (average (y-point (start-segment x)) (y-point (end-segment x))))
)  

(define (print-point p) 
    (newline)
    (display "(") 
    (display (x-point p)) 
    (display ",")
    (display (y-point p)) 
    (display ")"))


(print-point (mid-segment (make-segment (make-piont 1 2) (make-piont 3 4))))