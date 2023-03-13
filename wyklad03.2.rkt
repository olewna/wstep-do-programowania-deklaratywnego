#lang racket

#|drzewa binarne|#
#|(x e r)|#

(define drzewo `(2 (3 () (4 () ())) (1 () ())))
drzewo

(define (height t)
  (if (eq? t `())
      0
      (+ 1 (max (height (car (cdr t)))
                (height (car (cdr (cdr t))))))))

(height drzewo)

(define (is-null? t) (eq? `() t))
(define (left t) (cadr t))
(define (right t) (caddr t))

#|(define (wysokosc t)
  (if (is-null? t)
      0
      (+ 1 (max (left t) (right t)))))

(wysokosc drzewo)|#

(define (element t) (car t))

(define (preorder t)
  (if (is-null? t)
      `()
      (append
       (cons (element t)
             (preorder (left t)))
       (preorder (right t)))))

(preorder drzewo)

#| funkcja mnożąca wszystkie elementy drzewa przez n |#
(define (make-tree x l r) (cons x (list l r)))

(define (times n t)
  (if (is-null? t)
      `()
      (make-tree (* (element t) n)
                 (times n (left t))
                 (times n (right t)))))

(times 5 drzewo)

