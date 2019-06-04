#lang sicp
(define (expt-recursive b n)
    (if (= n 0)
        1
        (* b (expt-recursive b (- n 1) )))
    )

(expt-recursive 2 2)


(define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter b (- counter 1) (* b product)))
    )

(expt-iter 2 2 1)


(define (even? n) (= (remainder n 2) 0))
(define (square x)
    (* x x))

(define (fast-expt b n)
    (if (= n 0) 
        1 
        (if (even? n)
        (square (fast-expt b (/ n 2))) 
        (* b (fast-expt b (- n 1)))))
    
)
(fast-expt 2 3)