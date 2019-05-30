#lang sicp

(define (same-parity . x)

    (define (recursive filter remain-list)
        (if (null? remain-list)
            nil
            (if (filter (car remain-list))
                (cons (car remain-list) (recursive filter (cdr remain-list)))
                (recursive filter (cdr remain-list))
            )
        )
    )
    (if (even? (car x))
        (recursive even? x)
        (recursive odd?  x))
)

(same-parity 1 2 3 4 5 6 7)

(same-parity 2 3 4 5 6 7)

(same-parity 2)