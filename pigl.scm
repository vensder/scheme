(define (pigl wd)
  (if (pl-done? wd)
    (word wd 'ay)
    (pigl (word (bf wd) (first wd)))))

(define (pl-done? wd)
  (vowel? (first wd)))

(define (vowel? letter)
  (member? letter '( a e i o u)))

(define (pigl-sent sent)
  (if (empty? sent)
    '()
    (se (pigl (first sent))
	(pigl-sent (bf sent)))))

