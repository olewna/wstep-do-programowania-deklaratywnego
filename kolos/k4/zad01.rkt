#lang racket

(define (delete x l)
  (cond
    ((null? l ) `())
    ((eq? x (car l)) (cdr l))
    (else (cons (car l)
                (delete x (cdr l))))))

(delete 3 `(1 2 3 4 5))