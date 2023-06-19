#lang racket

(define (twice l)
  (cond
    ((null? l) `())
    (else (cons (car l) (cons (car l) (twice (cdr l)))))))

(twice `(1 2 3 4))