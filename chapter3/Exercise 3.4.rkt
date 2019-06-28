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

    (define error-count 0)

    (define (call-the-cops)
        (if (eq? error-count 7)
            (begin  (set! error-count (+ error-count 1))
                    (error 'call-the-cops))
            (begin  (set! error-count (+ error-count 1))
                    (error 'password-error))))


    (lambda (secret name)
        (if (eq? secret password)
            (begin  (set! error-count 0)
                    (dispatch name))
            (call-the-cops)))

)

(define acc (make-account 100 'secret-password))

((acc 'secret-password 'withdraw) 40)

((acc 'some-other-password 'deposite) 50)