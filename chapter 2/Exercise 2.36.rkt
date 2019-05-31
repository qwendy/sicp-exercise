#lang sicp


(define (accumulate f null-value seq)
    (if (null? seq)
        null-value
        (begin
                (f  (car seq)
                    (accumulate f null-value (cdr seq))))
        ))


(define (accumulate-n op init seqs)
    (if (null? (car seqs))
        nil
        (cons   (accumulate op init (map (lambda (x) (car x)) seqs))
                (accumulate-n op init (map (lambda (x) (cdr x)) seqs))))
)


(define example-lst
    (list   (list 1 2 3)
            (list 4 5 6)
            (list 7 8 9)
            (list 10 11 12)))

(accumulate-n + 0 example-lst)