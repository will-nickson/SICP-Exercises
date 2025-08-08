#lang sicp

; recursive
(define (cont-frac-recur n d k)
  (define (recur i)
    (if (= k i)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (recur (+ 1 i))))))
  (recur 1))

; iterative
(define (cont-frac-iter n d k)
        (define (iter i result)
          (if (= 0 i)
              result
              (iter (sub1 i) (/ (n i) (+ result (d i))))))
        (iter (sub1 k) (/ (n k) (d k))))
