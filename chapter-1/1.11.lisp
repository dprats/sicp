; Exercise 1.11. A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) +
; 3f(n - 3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure
; that computes f by means of an iterative process. 

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

