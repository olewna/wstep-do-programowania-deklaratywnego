#lang racket

#| listy |#
(cons 1(cons 2(cons 3 `())))
(list 1 2 3)
(cdr (list 1 2 3))

(list 1 (cons 2 3) 7 )

(define (len l)
  (if (null? l)
      0
      (+ 1 (len (cdr l)))))

(len (list 1 (cons 2 3) 7 ))
(len (list 1 3 5 12 4))

(list `a `b `XD)
`(a b c jd)

(define jeden 1)
(define dwa 2)
(list jeden dwa)
(list jeden `dwa)

(define (includes x l)
  (cond ((null? l) #f)
        ((eq? (car l) x) #t)
        (#t (includes x (cdr l)))))

(includes 7 (list 1 2 5 7 7 1))
(includes 7 (list `7))