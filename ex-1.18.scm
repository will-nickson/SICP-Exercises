#lang sicp
(define (fast-mul a b)
  (define (iter a b result)
    (cond ((= b 0) result)
          ((even? b) (iter (double a) (half b) result))
          (else (iter a (- b 1) (+ result a)))))
  (iter a b 0))

(define (half a)
  (/ a 2))

(define (double a)
  (* a 2))

(fast-mul 2 10)
