#lang sicp

(define (enumerate-interval low high)
    (if (> low high)
        nil
        (cons low (enumerate-interval (+ low 1) high)))
)

(enumerate-interval 1 10)

(define (accumulate op init seq)
    (if (null? seq)
        init
        (op (car seq)
        (accumulate op init (cdr seq))))
    )

(define (flatmap proc seq) (accumulate append nil (map proc seq)))

(define (ordered-triples n)
  (flatmap (lambda (i)
             (flatmap (lambda (j)
                        (map (lambda (k)
                               (list i j k))
                             (enumerate-interval 1 (- j 1))))
                      (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

(ordered-triples 10)