(define (++ x) (+ x 1))
(define (-- x) (- x 1))

(define (sum x y)
  (if (= x 0)
    y
    (sum (-- x) (++ y))))

(define (summ x y)
  (if (= x 0)
    y
    (++ (summ (-- x) y))))


(sum 2 3)
(summ 2 3)

