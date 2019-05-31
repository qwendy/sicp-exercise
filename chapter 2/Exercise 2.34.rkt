#lang sicp

(define (accumulate f null-value seq)
    (if (null? seq)
        null-value
        (f  (car seq)
            (accumulate f null-value (cdr seq)))))


(define (horner-eval x coefficient-sequence)
    (accumulate (lambda (this-coeff higher-terms) (+    this-coeff
                                                        (* higher-terms)))
                0
                coefficient-sequence))


(horner-eval 2 (list 1 3 0 5 0 1))