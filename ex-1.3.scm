(define (sumLargerSquares a b c)
  (let ((sorted (sort (list a b c) >)))
    (+ (* (car sorted) (car sorted))
       (* (cadr sorted) (cadr sorted)))))

(display (sumLargerSquares 3 5 7))
