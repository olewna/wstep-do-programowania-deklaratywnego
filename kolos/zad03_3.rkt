#lang racket

(define (fold f e l)
  (if (null? l)
      e
      (f (car l) (fold f e (cdr l)))))

(define (exists f l)
  (fold (lambda (elem acc)
          (or (f elem) acc))
        #f
        l))

(exists even? `(1 2 3))