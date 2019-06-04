#lang sicp
(define (cont-frac n d k)
    (define (recursive i)
        (if (= i k)
            (/ (n i) (d i))
            (/ (n i) (+ (d i) (recursive (+ i 1))))))
    (recursive 1)
)

(define (d i)
    (if (= 0 (remainder (+ i 1) 3))
        (* 2 (/ (+ i 1) 3))
        1
    )

)


(+ 2 (cont-frac (lambda (i) 1.0) d 100))