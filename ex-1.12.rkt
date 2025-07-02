#lang sicp

(define (pascal row col)
  (cond
    ((or (= col 0) (= col row)) 1)
    ((or (< col 0) (> col row)) 0)
    (else (+
           (pascal(- row 1) (- col 1))
           (pascal(- row 1) col)))))

(pascal 3 1)
(pascal 4 2)
(pascal 5 2)