#lang sicp
(define (fib n)
  (let* ((sqrt5 (sqrt 5))
         (phi (/ (+ 1 sqrt5) 2))
         (psi (/ (- 1 sqrt5) 2)))
    (round (/ (- (expt phi n) (expt psi n)) sqrt5))))

(fib 10)
