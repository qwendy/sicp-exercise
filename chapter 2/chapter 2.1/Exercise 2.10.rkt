(define (div-interval a b)
    (if (and (< a 0) (> b 0))
        (display "error!")
        (mul-intercal   x
                    (make-interval  (/ 1.0 (upper-bound b))
                                    (/ 1.0 (lower-bound b))))))
