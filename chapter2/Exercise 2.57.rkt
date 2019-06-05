#lang sicp

(define (sum? x)
    (and (pair? x) (eq? (car x) '+)))

(define (product? x)
    (and (pair? x) (eq? (car x) '*)))

(define (make-sum a . rest)
    (if (null? rest)
        a
        (+ (car rest) (make-sum a . (cdr rest)))))


(define (make-sum a1 . a2)
    (if (single-operand? a2)
        (let ((a2 (car a2)))
            (cond ((=number? a1 0)
                    a2)
                  ((=number? a2 0)
                    a1)
                  ((and (number? a1) (number? a2))
                    (+ a1 a2))
                  (else
                    (list '+ a1 a2))))
        (cons '+ (cons a1 a2))))

