#lang racket
(define (nwd a b)
  (if (> b a)
      (nwd b a)
      (if (= b 0)
          a
           (nwd b (modulo a b)))))
(nwd 15 100)

(define (nww a b)(/(* a b )(nwd a b)))
(nww 76 54)