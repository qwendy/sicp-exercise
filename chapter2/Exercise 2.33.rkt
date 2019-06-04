#lang sicp

(define (accumulate f null-value seq)
    (if (null? seq)
        null-value
        (f  (car seq)
            (accumulate f null-value (cdr seq))))

(define (map p sequence)
    (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

(define (append seq1 seq2)
    (accumulate cons seq2 seq1))

(define (length sequence)
    (accumulate (lambda (x y) (+ y 1)) 0 sequence))



