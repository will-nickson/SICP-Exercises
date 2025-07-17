#lang sicp

(define (square x) (* x x))

(define (sumSquare x y) (+ (square x) (square y)))

(define (sumLargeSquares x y z)
  (cond ((and (>= (+ x y) (+ y z)) (>= (+ x y) (+ x z))) (sumSquare x y)) 
        ((and (>= (+ x z) (+ y z)) (>= (+ x z) (+ x y))) (sumSquare x z)) 
        (else (sumSquare y z)) 
   ))

(sumLargeSquares 1 2 3)
