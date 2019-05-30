#lang sicp

(define (make-mobile left right) (list left right))

(define (make-branch length structure) (list length structure))

(define (left-branch tree)
    (car tree))

(define (right-branch tree)
    (car (cdr tree)))

(define (branch-length branch)
    (car branch))

(define (branch-structure branch)
    (cadr branch))

(define (total-weight tree)
    (if (null? tree)
        0
        (+  (branch-weight  (left-branch tree))
            (branch-weight  (right-branch tree))
        )
    )
)

(define (branch-weight branch)
    (if (hangs-another-mobile? branch)
        (total-weight (branch-structure branch))
        (branch-structure branch)))

(define (hangs-another-mobile? branch)
    (pair? (branch-structure branch)))