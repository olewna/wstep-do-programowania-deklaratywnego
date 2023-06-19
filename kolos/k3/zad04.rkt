#lang racket
(define (drop-while p l)
  (cond
    ((null? l)
     `())
    ((p (car l)) (drop-while p (cdr l)))
    (else l)))

(drop-while even? `(2 2 3 4))