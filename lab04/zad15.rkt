#lang racket

(define (comb f g)
   (lambda (x) (f (g x))))

(define (square n) (* n n))

(define (double n) (+ n n))

 ((comb square double) 5)

; x=5
; (x*2)^2=10^2=100