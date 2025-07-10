#lang sicp
(define (fast-mul a b)
    (cond ((= b 0) 0)
          ((even? b) (double (fast-mul a (half b))))
          (else (+ a (fast-mul a (- b 1))))))

(define (half a)
  (/ a 2))

(define (double a)
  (* a 2))

(fast-mul 2 10)
