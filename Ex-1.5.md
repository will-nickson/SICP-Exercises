### Applicative-Order
(test 0 (p)) will never evaluate as *(p)* will infinitely reference itself.

### Normal-Order
Using normal-order evaluation will result in 0 as the *if* statement will return 0. 
