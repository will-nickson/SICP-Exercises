#lang sicp
(define (count-change amount)
  (define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 4) 25)
          ((= kinds-of-coins 5) 50)))
  
  (define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kinds-of-coins 0)) 0)
          (else (+ (cc amount
                      (- kinds-of-coins 1))
                   (cc (- amount
                          (first-denomination kinds-of-coins))
                       kinds-of-coins)))))
  
  (cc amount 5))

; Using coins: 1¢, 5¢, 10¢, 25¢, 50¢

(cc 11 5)
├── (cc 11 4)          ; exclude 50¢
│   ├── (cc 11 3)      ; exclude 25¢
│   │   ├── (cc 11 2)  ; exclude 10¢
│   │   │   ├── (cc 11 1)   ; exclude 5¢
│   │   │   │   ├── (cc 11 0) = 0
│   │   │   │   └── (cc 10 1)
│   │   │   │       ├── (cc 10 0) = 0
│   │   │   │       └── (cc 9 1)
│   │   │   │           └── ... (continues until amount < 0 or amount == 0)
│   │   │   └── (cc 6 2)     ; include 5¢
│   │   │       └── ...
│   │   └── (cc 1 3)         ; include 10¢
│   │       └── ...
│   └── (cc -14 4) = 0       ; include 25¢ (11 - 25 = -14)
└── (cc -39 5) = 0           ; include 50¢ (11 - 50 = -39)
