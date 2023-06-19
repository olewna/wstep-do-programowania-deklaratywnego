#lang racket

(define (append x l)
  (cond
    ((null? x) l)
    ((cons (car x) (append (cdr x) l)))))

(append `(1 2) `(3 4))