#lang racket

(define (exchange x y l)
  (map (lambda (elem)
         (if (eq? elem x)
             y
             elem))
       l))

(exchange 3 9 `(1 2 3 4 5 6 3))