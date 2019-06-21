#lang sicp

(define (element-of-set? x set)
    (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))


(define (union-set  set1 set2)
    (if (null? set2)
        set1
        (if (element-of-set? (car set2) set1)
            (union-set set1 (cdr set2))
            (union-set (cons (car set2) set1) (cdr set2)))
    )
)


(union-set (list 1 2 3) (list 3 4 5))