#lang racket

(define (fn x) (- 2 (* x x)))
(define (fn2 x) (+ 2 (* x x)))

(define (root f a b)
  (cond
    ((> (* (f a)(f b)) 0) #f)
    ((< (abs (f a)) 0.0001) a)
    ((> (f a)(f b))
     (cond
       ((> (f (/ (+ a b) 2)) 0) (root f (/ (+ a b) 2) b))
       ((< (f (/ (+ a b) 2)) 0) (root f a (/ (+ a b) 2)))
       ((= (f (/ (+ a b) 2)) 0) (/ (+ a b) 2))
      ))
    ((< (f a)(f b))
     (cond
       ((> (f (/ (+ a b) 2)) 0) (root f a (/ (+ a b) 2)))
       ((< (f (/ (+ a b) 2)) 0) (root f (/ (+ a b) 2) b))
       ((= (f (/ (+ a b) 2)) 0) (/ (+ a b) 2))
      ))))
                                
          

(root fn2 -5.0 4.0)
      