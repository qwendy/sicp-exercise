#lang sicp

(define (make-from-mag-ang x y)
  (define (dispatch op)
    (cond ((eq? op 'magnitude) x)
          ((eq? op 'angle) y)
          ((eq? op 'real-part)
            (* x (cos y))
          )
          ((eq? op 'imag-part)
            (* x (sin y))
          )
    ))
  dispatch
)