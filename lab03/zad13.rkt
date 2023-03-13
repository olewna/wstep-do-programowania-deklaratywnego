#lang racket

(define (square x)
  (* x x))

(define (f g)(g 2))

#| a |#
(f square)
#| dziala normalnie |#

#| b |#
(f (lambda (z) (+ z (* 3 z ))))
#| dziala |#

#| c |#
(f f)
#| nie dziala, nie jest podany operator |#