#lang racket

(define (fold f e l)
  (if (null? l)
      e
      (f (car l) (fold f e (cdr l)))))

(define (reverse l)
  (fold (lambda (x y) (cons y x)) `() l))

(reverse `(1 2 3 4))