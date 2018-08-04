; a function f is defined by the rule that f(n) = n if n < 3

(define (f n)
	(cond 	((< n 3) n)
			(else 	(+ 
						(f (- n 1))  
						(* 2 (f (- n 2)))
					)
	)
)

	; f(2) = 2
	; f(3) = f(2) + (2)(f(1)) = (2) + 2*(1) = 2 + 2 = 4
	; f(4) = f(3) + (2)(f(2)) = (3) + 2*(2) = 4 + 4 = 8
	; f(5) = f(4) + (2)(f(3)) = (7) + 2*(4) = 8 + 8 = 16


	; Write a procedure that computes elements of pascals triangle