#lang racket

(define (real-part z)
  (cond ((rectangular? z)
         (real-part-rectangular (contents z)))
        ((polar? z)
         (real-part-polar (contents z)))))

(define (imag-part z)
  (cond ((rectangular? z)
         (imag-part-rectangular (contents z)))
        ((polar? z)
         (imag-part-polar (contents z)))))

(define (magnitude z)
  (cond ((rectangular? z)
         (magnitude-rectangular (contents z)))
        ((polar? z)
         (magnitude-polar (contents z)))))

(define (angle z)
  (cond ((rectangular? z)
         (angle-rectangular (contents z)))
        ((polar? z)
         (angle-polar (contents z)))))

(define (real-part-rectangular z) (car z))

(define (imag-part-rectangular z) (cdr z))

(define (magnitude-rectangular z)
  (sqrt (+ (square (car z)) (square (cdr z)))))

(define (square x) (* x x))

(define (angle-rectangular z) (atan (cdr z) (car z)))

(define (real-part-polar z) (* (car z) (cos (cdr z))))

(define (imag-part-polar z) (* (car z) (sin (cdr z))))

(define (magnitude-polar z) (car z))

(define (angle-polar z) (cdr z))

(define (attach-type type contents) (cons type contents))

(define (type datum) (car datum))

(define (contents datum) (cdr datum))

(define (rectangular? z) (eq? (type z) `rectangular))

(define (polar? z) (eq? (type z) `polar))

(define (make-rectangular x y)
  (attach-type `rectangular (cons x y)))

(define (make-polar x y)
  (attach-type `polar (cons x y)))

; a

(define (+c z1 z2)
  (make-rectangular (+ (real-part z1) (real-part z2))
                    (+ (imag-part z1) (imag-part z2))))

(define (-c z1 z2)
  (make-rectangular (- (real-part z1) (real-part z2))
                    (- (imag-part z1) (imag-part z2))))

(define (*c z1 z2)
  (make-polar (* (magnitude z1) (magnitude z2))
              (+ (angle z1) (angle z2))))

(define (/c z1 z2)
  (make-polar (/ (magnitude z1) (magnitude z2))
              (- (angle z1) (angle z2))))

; c

(define z1 (make-rectangular -1 3))
(define z2 (make-polar 2 -2))

(angle (+c z1 z2))