#lang sicp
(define (tan-cf x k)
    (define (recursive i)
        (define (n i)   
            (if (= i 1) 
                x
                (* x x)))
        (define (d i)
            (- (* i 2) 1))
        (if (= i k)
            (/ (n i) (d i))
            (/ (n i) (- (d i) (recursive (+ i 1))))
        )
    )
    (recursive 1)
)

(tan-cf (/ 3.14 6)  100)

