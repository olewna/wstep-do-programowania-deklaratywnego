#lang racket

(define (sum g a)
  (cond
    ((eq? a -1) 0)
    (else (+ (g a) (sum g (- a 1))))))

(sum (lambda (x) (+ x 2)) 3)