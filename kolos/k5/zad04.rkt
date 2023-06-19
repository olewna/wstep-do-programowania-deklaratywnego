#lang racket

(define (square x) (* x x))

(define (sum f r)
    (cond 
        ((eq? r -1) 0)
        ((+ (f r) (sum f (- r 1))))))

(sum square 4)