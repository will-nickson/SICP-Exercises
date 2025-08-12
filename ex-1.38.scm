#lang sicp

(define (cont-frac-iter n d k)
  (define (iter i result)
    (if (= 0 i)
        result
        (iter (- i 1) (/ (n i) (+ (d i) result)))))
  (iter (- k 1) (/ (n k) (d k))))

(define (d-euler i)
  (if (= (modulo i 3) 2)
      (* 2 (/ (+ i 1) 3))
      1))

(define (display-series f n)
  (define (rec i)
    (display (f i)) (display ", ")
    (if (= i n)
        (newline)
        (rec (+ i 1))))
  (rec 1))

(display-series d-euler 12)