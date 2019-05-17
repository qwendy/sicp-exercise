#lang sicp
(define (triangle row col)
    (cond ((= col 1) 1)
        ((= row col) 1)
        (else (+ 
                (triangle (- row 1) (- col 1 )) 
                (triangle (- row 1) col)))
    )
)
(triangle 3 2)
(triangle 4 3)