#lang racket

; a

(define (fold f e l)
  (if (null? l)
      e
      (f (car l) (fold f e (cdr l)))))

(define (prod l)(fold * 1 l))

(prod `(1 2 3 4))

; b

(define (length l)
  (fold (lambda (x y) (+ y 1)) 0 l))

(length `(1 2 3 4))

; c

(define (delete x l)
  (fold (lambda (y acc)
          (if (equal? y x) acc (cons y acc)))
          `() l ))

(delete 3 `(1 2 3 4))

; d

(define (reverse l)
  (fold (lambda (acc x) (cons x acc)) `() l))

(reverse `(1 2 3 4))

; e

(define (map f l)
  (fold (lambda (x acc) (cons (f x) acc)) `() l))

(define (square x) (* x x))
(map square `(1 2 3 4))

; f


(define (filter pred l)
  (fold (lambda (x acc)
          (if (pred x)
              (cons x acc)
              acc))
        `() l))

(define (moreThan3 x) (> x 3))
(filter moreThan3 `(1 2 3 4))

; g

(define (forall pred l)
  (fold (lambda (x acc) (and acc (pred x))) #t l))

(forall odd? `(2 4 6 8))
(forall even? `(2 4 6 8))
