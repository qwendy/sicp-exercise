#lang sicp

(define (exp a b)
    (define (recursive i)   
        (if (> i b)
            1
            (* a (recursive (+ i 1)))))
    (if (= b 0)
        1
        (recursive 1))
)

(define (make-pair a b) 
    (cons a b))

(define (value x)
    (*  (exp 2 (car x))
        (exp 3 (cdr x)))
)

(value (make-pair 2 3))