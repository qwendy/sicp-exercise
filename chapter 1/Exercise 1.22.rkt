#lang sicp
(define (square x)
    (* x x))
(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor) 
    (cond 
        ((> (square test-divisor) n) n) 
        ((divides? test-divisor n) test-divisor) 
        (else (find-divisor n (+ test-divisor 1))))) 

(define (divides? a b) (= (remainder b a) 0))

(define (prime? n) (= n (smallest-divisor n)))


(define (timed-prime-test n) 
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time) 
    (if (prime? n) 
        (report-prime n (- (runtime) start-time)) 
        #f)) 
(define (report-prime n elapsed-time) 
    (display n) 
    (display "***") 
    (display elapsed-time) 
    (newline)) 
            

(define (search-for-primes start end)
    (cond ((= start end) #f)
        (else (timed-prime-test start)  (search-for-primes (+ start 1) end))))

(search-for-primes 1000 1000000)