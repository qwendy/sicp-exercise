#lang sicp
(define (prime? n)
    (define (devides? a b)
        (= (remainder a b) 0))
    (define (find-divisor n x)
        (cond ((> (* x x) n) n)
            ((devides? n x) x)
            (else (find-divisor n (+ x 1)))))
    (define (smallest-divisor n)
        (find-divisor n 2))
    (= (smallest-divisor n) n)    
)

(prime? 5)
(define (accumulate combiner null-value term a next b)
    (if (> a b) 
        null-value
        (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (filtered-accumulate filter combiner null-value f a next b)
    (define (filtered-term k) 
        (if (filter k) (f k) null-value))
    (accumulate combiner null-value filtered-term a next b) 
)
(define (plus x y)
    (+ x y))

; 4+6+8+9+10
(filtered-accumulate prime? + 0 (lambda (x) x) 2 (lambda (x) (+ x 1)) 10)

(define (devides? a b)
    (= (remainder a b) 0))

(define (GCD a b)
    (cond ((< a b) (GCD b a))
        ((devides? a b) b)
        (else (GCD b (remainder a b)))
    )
)
(define (relatively-prime? a b)
    (= (GCD a b) 1)) 

(define (times a b)
    (* a b))

(GCD 2 3)

(define (product-of-relatively-prime n)
    (define (filter-term a)
        (relatively-prime? a n))
    (filtered-accumulate filter-term * 1 (lambda (x) x) 2 (lambda (x) (+ x 1)) 10)
    )

(product-of-relatively-prime 10)