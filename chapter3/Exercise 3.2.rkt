#lang sicp

(define (make-monitored f)
    (define count 0)
    (define (dispatch x)
        (if (eq? x 'how-many-calls)
            count
            (f x))
        )
    (lambda (x) (begin  (set! count (+ count 1))
                        (dispatch x)))
    )

(define s (make-monitored sqrt))
(s 100)