#lang racket

(define drzewo `(2 (3 () (4 () ())) (1 () ())))

(define (left tree) (cadr tree))

(define (right tree) (caddr tree))

(define (is-null? tree) (eq? `() tree))

; a

(define (memberTree? element tree)
  (cond ((eq? tree `()) #f)
        ((eq? (car tree) element) #t)
        ((or (memberTree? element (left tree))
             (memberTree? element (right tree)))
             #t)))

(memberTree? 1 drzewo)

; b

(define (sumTree tree)
  (if (eq? tree `())
      0
      (+ (car tree)
         (+ (sumTree (left tree))
            (sumTree (right tree))))))

(sumTree drzewo)

; c

(define (inorder tree)
  (if (eq? tree `())
      `()
      (append (inorder (left tree)) (cons (car tree) (inorder (right tree))))))

(inorder drzewo)

; d

(define (make-tree x l r)
  (cons x (list l r)))

(define (mapTree f tree)
  (if (eq? tree `())
      `()
      (make-tree (f (car tree))
                 (mapTree f (left tree))
                 (mapTree f (right tree)))))

(define (mapper x)(+ 2 x))

(mapTree mapper drzewo)