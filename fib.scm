(define (fib n)
  (if (< n 2)
    n
    (+ (fib (- n 1))
       (fib (- n 2)))))

(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
