#lang sicp

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else
         (remainder (* base (expmod base (- exp 1) m)) m))))

(define (square x) (* x x))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (carmichael-test n)
  (define (test a)
    (cond ((= a n) #t)
          ((= (gcd a n) 1)
           (if (= (expmod a n n) a)
               (test (+ a 1))
               #f))
          (else
           (test (+ a 1)))))
  (test 2))

(carmichael-test 561)
(carmichael-test 1105)
(carmichael-test 1729)
(carmichael-test 2465)
(carmichael-test 2821)
(carmichael-test 6601)
