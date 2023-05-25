#lang racket

; a

(define (square-list l)
  (if (null? l)
      '()
      (cons (* (car l) (car l)) (square-list (cdr l)))))

(square-list (list 1 2 3 4 5))

; b

(define (mapf f l)
  (if (null? l)
      '()
      (cons (f (car l)) (mapf f (cdr l)))))

(mapf (lambda (x) (- x 1)) (list 2 3 4 5))

; c

(define (filter pred l)
  (if (null? l)
      '()
      (if (pred (car l))
          (cons (car l) (filter pred (cdr l)))
          (filter pred (cdr l)))))

(filter (lambda (x) (> x 5)) (list 1 2 7 4 5 6 7 8 9))