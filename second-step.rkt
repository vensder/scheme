(define counter 0)
(define (++ x)(+ 1 x))

(define (color? color)
  (member color '(red
                  green
                  blue
                  yellow
                  white
                  black
                  gray
                  brown)))

(define (is_color? color)
  (if (color? color)
      (display "is a color")
      (display "not color"))
  (display "\n"))

(define (main_loop)
  (set! counter (++ counter))
  (display counter)
  (display " input color or exit > ")
  (let ((input (read)))
    (cond ((eq? input 'exit)
           (display "exiting...")
           (newline))
          (#t
           (is_color? (read))
           (main_loop)))))

(main_loop)