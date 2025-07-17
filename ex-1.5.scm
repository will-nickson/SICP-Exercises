#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; applicative order
; test 0 (p -> evalutates to p -> evaluates to p ->)
; infinite loop of p evaluating to p

; normal order
; test x y
; if (x -> 0) = 0
; return 0
