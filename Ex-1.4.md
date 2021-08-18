a-plus-abs-b takes a & b as parameters

if b is greater than 0 then return a + else return a -

(a-plus-abs-b 1 3)
((if (> 3 0) + -) 1 3)
((if #t + -) 1 3)
(+ 1 3)
4


