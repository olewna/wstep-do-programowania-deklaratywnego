#lang racket

(define (iter f n)
  (if (equal? n 1)
      1
      (* f (iter f (- n 1)))))
          

(define (fn x) (* 2 x))

(iter (fn 2) 5)