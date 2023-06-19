#lang racket

(define (count x l)
  (cond
    ((null? l) 0)
    ((eq? x (car l)) (+ 1 (count x (cdr l))))
    (else (count x (cdr l)))))

(count 3 `(1 2 3 4 5 3 2 5 3))