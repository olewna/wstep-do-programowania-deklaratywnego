#lang racket

(define (product term next a b)
  (if (> a b)
      1
      (* (term a)
         (product term next (next a) b))))

(define (plus2 a)
  (+ a 2.0))

(define (podziel a)
  (/ (* (- a 2) a) (* (- a 1.0) (- a 1.0))))

(* 4 (product podziel plus2 4.0 1000000.0))