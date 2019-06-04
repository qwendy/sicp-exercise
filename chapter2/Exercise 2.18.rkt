#lang sicp

(define (reverse x)
    (define (iter remain-list result)
        (if (null? remain-list)
            result
            (iter (cdr remain-list) (cons (car remain-list) result))))
    (iter x nil)
)


(define (reverse-2 xs)
  (cond ((null? xs) nil)
        (else (append (reverse (cdr xs))
              (list (car xs))))))

(reverse (list 1 4 9 16 25))
(reverse-2 (list 1 4 9 16 25))