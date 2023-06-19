#lang racket

(define (fold f e l)
  (if (null? l)
      e
      (f (car l) (fold f e (cdr l)))))

(define (delete x l)
  (fold (lambda (elem acc)
          (if (eq? elem x)
              acc
              (cons elem acc)))
        `()
        l))

(delete 3 `(1 2 3 4 3 5))