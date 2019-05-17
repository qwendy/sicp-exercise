#lang sicp

(define (even? n)
    (= 0 (remainder n 2))
)

(define (double x) (+ x x)) 

(define (halve x) (/ x 2)) 
  
(define (* a b)
    (cond ((= b 0) 0)
        ((even? b) (double (* a (halve b))))
        (else (+ a (* a (- b 1))))
        )
    )   

(* 4 5)