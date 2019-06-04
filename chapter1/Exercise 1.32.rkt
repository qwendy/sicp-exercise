#lang sicp
; (accumulate combiner null-value term a next b)
(define (accumulate-rcv combiner null-value term a next b)  
    (if (> a b) 
        null-value 
        (combiner   (term a)
                    (accumulate-rcv combiner null-value term (next a) next b)))
    )
(define (identity x)    
    x)
(define (inc x)
    (+ x 1))
(define (plus a b)
    (+ a b))
(accumulate-rcv plus 0 identity 1 inc 10)

(define (accumulate-iter combiner null-value term a next b)
    (define (iter x result)
        (if (> x b)
            result
            (iter (next x) (combiner result (term x)))))
    (iter a null-value)
)

(define (multiple a b)
    (* a b))

(accumulate-iter multiple 1 identity 1 inc 10)