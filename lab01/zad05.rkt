#lang racket
(define (same-values? p1 p2 x y)
  (if (= (p1 x y) (p2 x y))
         #t
         #f))
(same-values? + * 2 2)