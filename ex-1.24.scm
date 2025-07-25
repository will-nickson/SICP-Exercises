#lang sicp

(#%require (only racket/base random))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
           (remainder (square (expmod base (/ exp 2) m)) m)
        )
        (else
           (remainder (* base (expmod base (- exp 1) m)) m))
  )
)

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a)
  )
  (try-it (+ 2 (my-random (- n 3))))      
)

(define MAX 10000000)

(define (my-random n)
  (if (< n 4294967087)
      (random n)
      (+ (* (random (quotient n MAX)) MAX) (random (remainder n MAX)))
  )
)  

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)
  )
)

(define (square x) (* x x))

(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time)
  1
)

(define (search-primes start count)
  (define (loop candidate remaining)
    (if (> remaining 0)
        (if (> (elapsed-prime-time candidate (runtime)) 0)
            (loop (+ candidate 2) (dec remaining))
            (if (even? candidate)
                (loop (+ candidate 1) remaining)
                (loop (+ candidate 2) remaining)
            )
        )
        (newline)
    )    
  )
  (loop start count)
)

(define (elapsed-prime-time n st)
     (if (fast-prime? n 25)
         (report-prime n (- (runtime) st))
         0
     ) 
)

;1009 *** 3
;1013 *** 3
;1019 *** 3

;10007 *** 8
;10009 *** 8
;10037 *** 8

;100003 *** 25
;100019 *** 24
;100043 *** 24

;1000003 *** 77
;1000033 *** 76
;1000037 *** 76
