#lang sicp

; 1. for small radicands the result will not be accurate as the tolerance will be too large for the scaled down errors that will occur.
;    for large radicands the procedure will enter an infinite loop as the tolerance will not be scaled up for the larger number.

(define (square x) (* x x))

 (define (sqrt x) 
   (define (sqrt-iter guess) 
     (if (good-enough-3? guess) 
       guess 
       (sqrt-iter (improve guess)))) 
   (define (good-enough-1? guess) 
     (define tolerance 1.0) 
     (< (abs (- (square guess) x)) tolerance)) 
   (define (good-enough-2? guess) 
     (define epsilon (expt 2 -52)) 
     (define min-float (expt 2 -1022)) 
     (define tolerance (* 3/2 epsilon)) 
     (< (abs (- (square guess) x)) (if (= x 0) min-float (* tolerance x)))) 
   (define (good-enough-3? guess) 
     (define epsilon (expt 2 -52)) 
     (define tolerance (* 9/4 epsilon)) 
     (or (= guess 0) (< (abs (- (improve guess) guess)) (* tolerance guess)))) 
   (define (improve guess) 
     (/ (+ guess (/ x guess)) 2)) 
   (define initial-guess 1.0) 
   (sqrt-iter initial-guess))

(display (sqrt 1)) (newline)
