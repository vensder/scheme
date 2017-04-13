(define (++ x) (+ x 1))
(define (-- x) (- x 1))
(define (+= x) (+ x x))
(define (*= x) (* x x))
(define (** x) (* x x))
(define (*** x) (* x x x))
(define (^4 x) (* x x x x))
(define (|| x) (if (< x 0) (- x) x))

; х в степени у
(define (^ x y)
  (if (= y 0) 1
      (* x (^ x (-- y)))))

; факториал х
(define (! x)
  (if (= x 0) 1
      (* x (! (-- x)))))

; факториал итерациями
(define (!iter acc i)
  (if (= i 0)
      acc
      (!iter (* acc i)
             (-- i))))
(define (!! n)
  (!iter 1 n))

(++ 5)
(-- 5)
(+= 5)
(*= 5)
(** 5)
(*** 5)
(^4 10)
(^ 2 5)
(! 1)
(! 2) ; 1 * 2
(! 3) ; 1 * 2 * 3
(!! 10)
(!  10) ; 1 * 2 * 3 * 4
(|| 5)
(|| -5)