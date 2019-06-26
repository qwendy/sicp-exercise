#lang sicp

(define (make-accumulator init)
    (lambda (augend) (begin (set! init (+ init augend))
                            init
    ))
    )

(define A (make-accumulator 5))

(A 10)

(A 10)