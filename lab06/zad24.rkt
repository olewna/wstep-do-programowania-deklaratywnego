#lang racket

; a
(define (plus x y z . l)
  (+ x y z (apply + l)))

(plus 1 2 3 4 5 6 7 8 9 10)

; b

(define (par . l)
  (lambda (x) (map (lambda (f) (f x)) l))
 )
(define (id x) x)
(define (square x) (* x x))
(define (cube x) (* x x x))
(define (double x) (* x 2))
((par id square cube) 3)
((par double double) 5)