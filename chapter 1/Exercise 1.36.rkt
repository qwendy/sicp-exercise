#lang sicp

(define tolerance 0.1)

(define (display-info guess step)
    (display "Step: ")
    (display step)
    (display " ")
    
    (display "Guess: ")
    (display guess)
    (newline))
(define (fixed-point f first-guess)
    (define (enough?  a b)
         (< (abs (- a b)) tolerance))
    (define (try guess step)
        (display-info guess step)   
        (let    ((next (f guess)))
                (if (enough? guess next)
                    next
                    (try next (+ step 1)))))
    (try first-guess 1)
)
(define (average a b)
    (/ (+ a b) 2))
(define (average-damp f)
    (lambda (x)
        (average x 
                 (f x))))
(define (f x)
    (/  (log 1000)
        (log x))
)
(fixed-point f 1.1)

(fixed-point (average-damp f) 1.1)