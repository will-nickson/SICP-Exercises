#lang sicp

(define (square x) (* x x))

(define (sum x y) (+ (square x) (square y))) 

(define (sum_square x y z)
  (cond ((and (>= x y) (>= y z)) (sum x y))
        ((and (>= y x) (>= z x)) (sum z y))
        (else (sum x z))
  )
)

(sum_square 5 4 3)
