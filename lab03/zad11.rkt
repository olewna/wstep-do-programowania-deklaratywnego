#lang racket

(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a) (accumulate combiner null-value term (next a) next b))))

;sum

(accumulate 
    (lambda (x y) (+ x y))
    0
    (lambda (x) x)
    2
    (lambda (x) (+ x 1))
    4)

;product

(accumulate 
    (lambda (x y) (* x y))
    1
    (lambda (x) x)
    2
    (lambda (x) (+ x 1))
    4)