#lang sicp

(define (smallest-divisor n)
    (find-divisor n 2)
)

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next-divisor test-divisor)))
  )
)

(define (divides? a b)
  (= (remainder b a) 0)
)

(define (next-divisor d)
  (if (= d 2)
      3
      (+ d 2)
  )
)  

(define (prime? n)
  (= n (smallest-divisor n)))

(define (square x) (* x x))

(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time)
  1
)

(define (search-primes start count)
  (define (search-primes-itr mm nn)
    (if (> nn 0)
        (if (> (elapsed-prime-time mm (runtime)) 0)
            (search-primes-itr (+ mm 2) (dec nn))
            (if (even? mm)
                (search-primes-itr (+ mm 1) nn)
                (search-primes-itr (+ mm 2) nn)
            )
        )
        (newline)
    )    
  )
  (search-primes-itr start count)
)

(define (elapsed-prime-time n st)
     (if (prime? n)
         (report-prime n (- (runtime) st))
         0
     ) 
)

(search-primes 1000 3)

(search-primes 10000 3)

(search-primes 100000 3)

(search-primes 1000000 3)