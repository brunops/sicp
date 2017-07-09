; Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sum-of-squares a b c)
        (cond ((> a b) (+ (square a)
                          (square (if (> b c) b c))))
              ((> a c) (+ (square a)
                          (square (if (> b c) b c))))
              (else (+ (square b) (square c)))))

(sum-of-squares 1 2 3) ; -> 13
(sum-of-squares 1 3 2) ; -> 13
(sum-of-squares 2 1 3) ; -> 13
(sum-of-squares 2 3 1) ; -> 13
(sum-of-squares 3 2 1) ; -> 13
(sum-of-squares 3 1 2) ; -> 13
(sum-of-squares 3 3 2) ; -> 18
(sum-of-squares 3 2 3) ; -> 18
(sum-of-squares 2 3 3) ; -> 18
(sum-of-squares 3 3 3) ; -> 18
