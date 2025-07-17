#lang sicp
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))))


(define (f-new n)
  (define (comp t3 t2 t1)
    (+
     t3
     (* 2 t2)
     (* 3 t1)
    )
   )

  (define (f-iter f3 f2 f1 c)
    (if (= c 2)
        f3
        (f-iter
         (comp f3 f2 f1)
         f3
         f2
         (dec c)
        )
     )
   )

  (if (< n 3)
      n
      (f-iter
       (f-new 2)
       (f-new 1)
       (f-new 0)
       n)
  )
)

