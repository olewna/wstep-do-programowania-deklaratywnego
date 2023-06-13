#lang racket

(define (fold f e l)
  (if (null? l)
      e
      (f (car l) (fold f e (cdr l)))))

(define (length l)
  (fold (lambda (x y) (+ y 1)) 0 l))

(length `(1 2 3))