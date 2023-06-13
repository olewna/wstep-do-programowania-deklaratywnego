#lang racket

(define (delete x l)
  (cond
    ((null? l ) `())
    ((eq? x (car l)) (cdr l))
    (else (cons (car l)
                (delete x (cdr l))))))

(delete 3 `(1 2 3 4 5))

(define (count x l)
  (cond
    ((null? l) 0)
    ((eq? x (car l)) (+ 1 (count x (cdr l))))
    (else (count x (cdr l)))))

(count 3 `(1 2 3 4 5 3 2 5 3))