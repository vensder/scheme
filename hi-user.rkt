(define (out x)
  (display x)
  (display "! ")
  (newline))

(define (hi name)
  (display "Hi ")
  (out name))

(define (stop name)
  (display "Access denied for user ")
  (out name))

(define (user)
  (write "What is your name?")
  (newline)
  (read))

(define (auth user)
  (if (member user '(vensder dima))
      (hi user)
      (stop user)))

(define (loop)
  (auth (user))
  (loop))

(loop)
