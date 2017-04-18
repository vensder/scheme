(define (argue s)
  (if (empty? s)
    '()
    (sentence (opposite (first s))
	      (argue (bf s)))))

(define (opposite w)
  (cond ((equal? w 'like) 'hate)
	((equal? w 'hate) 'like)
	((equal? w 'cool) 'bad)
	((equal? w 'bad) 'good)
	((equal? w 'good) 'bad)
	((equal? w 'i) 'you)
	((equal? w 'you) 'me)
	(else w)))


