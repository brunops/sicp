; Exercise 1.5.  Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:
;
; (define (p) (p))
;
; (define (test x y)
;   (if (= x 0)
;       0
;       y))
;
; Then he evaluates the expression
;
; (test 0 (p))
;
; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)



; Answer
; Applicative-oder resolves each operand before executing the operator.
; An interpreter with applicative-order will never terminate as (p) keeps expanding to itself. An infinite loop.
;   (test 0 (p))
;   (test 0 (p))
;   (test 0 (p))
;   (test 0 (p))
;   ...
;
; Whereas an interpreter with normal-order, it evaluates to 0. normal-order expands the expression until it's left with only primitive values. Because of the special (if predicate consequent alternative) form, when the predicate evaluates to #t, the consequent is executed but not the alternative, hence, no infinite loop.
;
;   (test 0 (p))
;   (if (= 0 0) 0 (p))
;   (if #t 0 (p))
;   0


