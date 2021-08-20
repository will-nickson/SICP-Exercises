### new-if
```lisp
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))
```

### square-root w/ new-if
```lisp
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                        x)))
```

It will error due to the third parameter passed to the conditional statement on line 11 as it will never stop calling itself.
