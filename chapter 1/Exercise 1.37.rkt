(define (cont-frac n d k)
    (define (recursive i)
        (let ((f (/ (n i) (d i))))
            (if (= i k)
                f
                (/  (n i) 
                    (+ (d i) (recursive (+ i 1))))               
            )
        )
    )
    (recursive 1)
)

(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 100)


(define (cont-frac-iter n d k)  
    (define (iter i result)
        (let ((f (/ (n i) (d i))))
            (if (< i 1) 
                result 
                (iter (- i 1) (/ (n i) (+ (d i) result))))
        )
    )
    (iter (- k 1) (d k))
)

(cont-frac-iter (lambda (i) 1.0) (lambda (i) 1.0) 100)

(define (golden-ratio k)
    (+ 1
       (cont-frac (lambda (i) 1.0)
                  (lambda (i) 1.0)
                  k)))

(golden-ratio 15)