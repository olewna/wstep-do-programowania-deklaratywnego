#lang racket

(define (fold f e l)
    (if (null? l) e (f (car l) (fold f e (cdr l)))))

(define (delete x l)
    (fold (lambda (y z) (if (eq? y x) z (cons y z))) `() l))

(delete 3 `(1 2 3 4 3 1))