#lang racket

(define (eval expression values)
  (cond ((eq? (car expression) 'and)
         (andmap (lambda (e) (eval e values)) (cdr expression)))
        ((eq? (car expression) 'or)
         (ormap (lambda (e) (eval e values)) (cdr expression)))
        ((eq? (car expression) 'not)
         (not (eval (cadr expression) values)))
        (else (let ((val (assoc (car expression) values)))
                (if val (cdr val) #f)))))


;; example usage
(define values '((x . #f) (y . #t) (z . #f)))

(eval '(and y (not x)) values) ; returns #t
(eval '(and y (and (not x) z)) values) ; returns #f
(eval '(and y #t) values) ; returns #t
