#lang racket

(define (inorder t)
  (cond
    ((null? t) `())
    (else (append (inorder (second t))
                  (list (first t))
                  (inorder (third t))))))

(inorder '(4 (3 () ()) (2 (9 () ()) (7 () ()))))