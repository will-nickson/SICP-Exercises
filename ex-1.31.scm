#lang sicp

; recursive
(define (product_r term a next b)
  (if (> a b)
      1
      (* (term a)
         (product_r term (next a) next b))))

; iterative
(define (product_i term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))
