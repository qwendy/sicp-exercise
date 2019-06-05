#lang sicp

(define (enumerate-interval low high)
    (if (> low high)
        nil
        (cons low (enumerate-interval (+ low 1) high))))

(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
    (accumulate append nil (map proc seq)))

(define empty-board nil)


(define (filter predicate seq)
    (if (null? seq)
        nil
        (if (predicate (car seq))
        (cons (car seq) (filter predicate (cdr seq)))
        (filter predicate (cdr  seq))))
    )


(define (even? x)
    (= 0 (remainder x 2))
)

; (filter even? (enumerate-interval 1 10))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
          (lambda (positions) (safe? k positions))
          (flatmap
            (lambda (rest-of-queens)
              (map (lambda (new-row)
                     (adjoin-position new-row k rest-of-queens))
                   (enumerate-interval 1 board-size)))
            (queen-cols (- k 1))))))
  (queen-cols board-size)
)

(define (safe? k positions)
    (define (iter i current-position)
        (if (null? current-position)
            #t
            (let ((first (car positions)) (ct (car current-position)))
                (cond   ((= (car positions) (car current-position)) #f)
                        ((= (car positions) (- i (car current-position))) #f)
                        ((= (car positions) (+ i (car current-position))) #f)
                        (else (iter (+ i 1) (cdr current-position) ))
                )))
    )
    (iter 1 (cdr positions))

)

(define (adjoin-position new-row k rest-of-queens)
    (cons new-row rest-of-queens))



(define (display-seq seq)
    (if (null? seq)
        (newline)
        (begin  (display (car seq))
                (newline)
                (display-seq (cdr seq)))))


(display-seq (queens 8))