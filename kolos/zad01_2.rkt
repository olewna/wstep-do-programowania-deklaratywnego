#lang racket

(define (fold f e l)
  (if (null? l)
      e
      (f (car l) (fold f e (cdr l)))))

(define (append l m)
  (fold cons m l))

(append `(1 2 3) `(4 5 6))