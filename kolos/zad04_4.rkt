#lang racket

(define (take-while p l)
  (cond
    ((null? l) `())
    ((p (car l)) (cons (car l) (take-while p (cdr l))))
    (else `())))

(take-while even? `(4 6 3 2))