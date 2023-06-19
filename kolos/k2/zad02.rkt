#lang racket

(define (nth n x l)
  (cond
    ((null? l) `())
    ((eq? n 1) (cons x (cdr l)))
    (else (cons (car l) (nth (- n 1) x (cdr l))))))

(nth 5 `z `(a b c))