#lang racket

(define (make-rectangular x y)
  (define (dispatch m)
    (cond ((eq? m `real-part) x)
          ((eq? m `imag-part) y)
          ((eq? m `magnitude) (sqrt (+ (square x) (square y))))
          ((eq? m `angle) (atan y x))
          (else (error "Unknown: " m))))
  dispatch)

(define (make-polar x y)
  (define (dispatch m)
    (cond ((eq? m `real-part) (* x (cos y)))
          ((eq? m `imag-part) (* x (sin y)))
          ((eq? m `magnitude) x)
          ((eq? m `angle) (atan y x))
          (else (error "Unknown: " m))))
  dispatch)

(define (real-part obj) (obj `real-part))

(define (imag-part obj) (obj `imag-part))

(define (magnitude obj) (obj `magnitude))

(define (angle obj) (obj `angle))

(define (square x) (* x x))

; b

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