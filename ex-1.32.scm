#lang sicp

; recursive
(define (accumulator_r combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulator_r combiner null-value term (next a) next b))))

(define (sum_r term a next b)
  (accumulator_r + 0 term a next b))

(define (product_r term a next b)
  (accumulator_r * 1 term a next b))


; iterative
(define (accumulator_i combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a null-value))

(define (sum_i term a next b)
  (accumulator_i + 0 term a next b))

(define (product_i term a next b)
  (accumulator_i * 1 term a next b))
