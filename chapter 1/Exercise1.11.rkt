#lang sicp

(define (f-recursive n)
    (if (< n  3)
        n 
        (+  (f-recursive (- n 1))
            (* 2 (f-recursive (- n 2)))
            (* 3 (f-recursive (- n 3))))))

(f-recursive 4)

(define (f-iter a b c count)
    (if (= count  0)
        a
        (f-iter b c (+ (* 3 a) (* 2 b) c) (- count 1))
))

(f-iter 0 1 2 4)