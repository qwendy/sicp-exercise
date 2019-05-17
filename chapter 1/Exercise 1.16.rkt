#lang sicp
(define (even? n)
    (= 0 (remainder n 2))
)
(define (fast-expt-iter b count product)
    (cond ((= count 0) product)
        ((even? count) (fast-expt-iter (* b b) (/ count 2) product))
        (else (fast-expt-iter b (- count 1) (* b product))))
)

(fast-expt-iter 2 2 1)