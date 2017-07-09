 ; Exercise-1.1. Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.

 ;10
 ;(+ 5 3 4)
 ;(- 9 1)
 ;(/ 6 2)
 ;(+ (* 2 4) (- 4 6))
 ;(define a 3)
 ;(define b (+ a 1))
 ;(+ a b (* a b))
 ;(= a b)
 ;(if (and (> b a) (< b (* a b)))
 ;    b
 ;    a)
 ;(cond ((= a 4) 6)
 ;      ((= b 4) (+ 6 7 a))
 ;      (else 25))
 ;(+ 2 (if (> b a) b a))
 ;(* (cond ((> a b) a)
 ;         ((< a b) b)
 ;         (else -1))
 ;   (+ a 1))


10                                ; -> 10
(+ 5 3)                           ; -> 8
(- 9 1)                           ; -> 8
(/ 6 2)                           ; -> 3
(+ (* 2 4) (- 4 6))               ; -> 6
(define a 3)                      ; -> a
(define b (+ a 1))                ; -> b
(+ a b (* a b))                   ; -> 19
(= a b)                           ; -> #f

; a = 3
; b = 4

(if (and (> b a) (< b (* a b)))
    b
    a)                            ; -> 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))                  ; -> 16

(+ 2 (if (> b a) b a))            ; -> 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))                       ; -> 16

