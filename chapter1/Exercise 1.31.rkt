#lang sicp
(define (product-rcv f a next b)
    (if (> a b)
        1
        (*  (f a) 
            (product-rcv f (next a) next b))
    )
)
(define (product-iter f a next b)
    (define (iter x result)
        (if (> x b)
            result
            (iter (next x) (* result (f a)))))
    (iter a 1)
)
(define (term k)
    (/  (*  (* 2 k) 
            (+ (* 2 k) 2))
        (*  (+ (* 2 k) 1)
            (+ (* 2 k) 1))
    )
)

(*  4
    (product-rcv term 1 (lambda (x) (+ x 1)) 10000))
(*  4
    (product-iter term 1 (lambda (x) (+ x 1)) 10000))
