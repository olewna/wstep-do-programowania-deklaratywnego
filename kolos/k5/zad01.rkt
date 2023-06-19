#lang racket

(define (fold f e l)
    (if (null? l) e (f (car l) (fold f e (cdr l)))))

(define (member x l)
    (fold (lambda (y z) (or (eq? y x) z)) #f l))

(member 2 `(1 2 3 4))
(member 2 `(1 3 4))