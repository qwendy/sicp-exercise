#lang sicp

(define (fib n)
    (define (fib-iter   a   b   counter)
        (if (=  counter 0)
            a
            (fib-iter   b   (+  a   b)  (-  counter 1))
        )
    )
    (fib-iter   0   1   n)
)

(fib    7)