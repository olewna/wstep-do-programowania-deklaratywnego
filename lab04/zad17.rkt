#lang racket

; a

(define (append l m)
  (if (null? l)
      m
      (cons (car l) (append (cdr l) m))))

(append `() (list 1))

; b

(define (last l)
  (if (null? l)
      l
      (if (equal? (cdr l) `())
          (car l)
          (last (cdr l)))))

(last `())

; c

(define (reverse l)
  (if (null? l)
      `()
      (append (reverse (cdr l)) (list (car l)))))

(reverse (list 1 2 3))

; d

(define (delete x l)
  (if (equal? x (car l))
      (cdr l)
      (append (list (car l)) (delete x (cdr l)) )))

(delete 3 (list 1 2 3 4))

; e

(define (pairing l1 l2)
  (if (null? l1)
      `()
      (if (null? l2)
          `()
          (cons (list (car l1) (car l2)) (pairing (cdr l1) (cdr l2))))))

(pairing `(1 2 3) `(a b c))

; f

(define (split x l)
  (define (less a)    (<= a x))
  (define (greater a) (>  a x))
  (list (filter less l)
        (filter greater l)))
          

(split 2 (list 2 1 4 2 1 3))
  