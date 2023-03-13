#lang racket

#|tail recursion|#
(define (factorial_help n i acc)
      (if (> n i)
          acc
          (factorial_help n (+ i 1) (* i acc))))

   (define (factorial n)
      (factorial_help n 1 1))


#|recursive|#
(define (fact x)
  (if (= x 1)
      1
      (* x (fact (- x 1)))))

(fact 4)