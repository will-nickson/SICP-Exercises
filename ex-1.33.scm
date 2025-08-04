#lang sicp

(define (filtered-accumulate predicate? combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (if (predicate? a) (term a) null-value)
                (filtered-accumulate predicate? combiner null-value term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-of-squares-prime a b)
  (filtered-accumulate prime? + 0 square a inc b))

(define (relative-prime? i n)
    (= (gcd i n) 1))
