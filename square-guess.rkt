(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2.0))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.00000000000001))
  ;(eq? x (square guess))) ; infinity loop

(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x)))

(define (√ x) (try 1 x))

(define (**** x)
  (define (** x)
    (* x x))
  (** (** x)))

(√ 1)
(√ 2)
(√ 3)
(√ 4)
(√ 5)
(√ 6)
(√ 7)
(√ 8)
(√ 9)
;(√ -4)

(**** 2)


