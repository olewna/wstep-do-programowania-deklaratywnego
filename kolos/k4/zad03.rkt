#lang racket

(define (filter pred l)
  (cond
    ((null? l) `())
    ((pred (car l)) (cons (car l) (filter pred (cdr l))))
    (else (filter pred (cdr l)))))

(filter even? '(4 3 5 6))
(filter list? '((4 3) 7 (1 2 3) 10))