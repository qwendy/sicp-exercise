#lang sicp

(define (make-account balance password)
    (define (with-draw x)
        (begin  (set! balance (- balance x))
                balance))
    (define (deposite x)
        (begin  (set! balance (+ balance x))
                balance))

    (define (dispatch name)
        (cond   ((eq? name 'withdraw) with-draw)
                ((eq? name 'deposite) deposite)
                (else (error "unknown request" name))))
    (lambda (secret name)
        (if (eq? secret password)
            (dispatch name)
            (error "password error" secret)))

)

(define acc (make-account 100 'secret-password))

((acc 'secret-password 'withdraw) 40)

((acc 'some-other-password 'deposit) 50)