#lang sicp

(define (dot-product v w)
    (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v) (map (lambda (x) (map (lambda (y) (* y )) x) m))

(define (transpose mat) (accumulate-n ⟨??⟩ ⟨??⟩ mat))

( define (matrix-*-matrix m n) (let ((cols (transpose n))) (map ⟨??⟩ m)))