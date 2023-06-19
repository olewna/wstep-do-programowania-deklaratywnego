#lang racket

(define (divisors n)
  (define (helper n i acc)
    (if (= n i)
        acc
        (if (= (remainder n i) 0)
            (helper n (+ i 1) (cons i acc))
            (helper n (+ i 1) acc))))
  (helper n 1 `()))

(divisors 15)