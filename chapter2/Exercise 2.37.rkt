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

(define (dot-product v w)
    (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
    (map (lambda (row) (dot-product row v)) m))

(define m
    (list   (list 1 2 3 4)
            (list 4 5 6 6)
            (list 6 7 8 9)
            (list 6 7 8 9)))

(define v (list 1 2 3 4))


(matrix-*-vector m v)


(define (transpose mat) (accumulate-n cons nil mat))



(define (matrix-*-matrix m n)
    (let ((cols (transpose n)))
        (map    (lambda (row) (map  (lambda (n-row) (dot-product  row n-row))
                                    cols)
                )m)
    )
)

(matrix-*-matrix m m)