#lang racket

#|fibonacci recursive|#

(define (fibo x)
  (if (< x 2)
      x
      (+ (fibo (- x 1))
         (fibo (- x 2)))))

(fibo 17)

#|fibonacci tail recursion|#

(define (fibonacci_tail n acc x)
  (if (= n 0)
      acc
      (if (= n 1)
          x
          (+ (fibonacci_tail (- n 1) x (+ acc x))))))

(define (fibonacci n)
  (fibonacci_tail n 0 1))

(fibonacci 17)