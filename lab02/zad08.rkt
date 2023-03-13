#lang racket

#|factorial tail recursion|#
(define (exp_tail a x acc)
  (if (= x 0)
      1
      (if (= x 1)
          (* acc a)
          (if (even? x)
              (exp_tail (* a a) (/ x 2) acc)
              (exp_tail a (- x 1) (* acc a))))))

(define (exp a x)
  (exp_tail a x 1))

(exp 2 6)
(exp 1 7)

#|factorial recursion|#
(define (exponential a b)
  (if (= b 0)
      1
      (if (= b 1)
          a
          (if (even? b)
              (* (exponential (* a a) (/ b 2)))
              (* (exponential a (- b 1)) a)))))

(exponential 2 6)