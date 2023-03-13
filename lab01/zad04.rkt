#lang racket
(define (odd? n)
  (if (= n 0)
      #f
      (if (= n 1)
          #t
          (odd? (- n 2)))))
(odd? 2137)
(odd? 666)

(define (even? n)
  (if (= n 0)
      #t
      (if (= n 1)
          #f
          (even? (- n 2)))))
(even? 420)
(even? 69)