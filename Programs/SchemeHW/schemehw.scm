;Author: Kyle Kaminski
;Professor: Dr. Tinkham
;Project: Scheme HW
;Version: 1.0
;Date: 10/7/2019

(define (D list) ;Disease
  (cond ((null? list) 0) ;base case
  (( and (eq? (cadar list) 1) (eq? (caddar list) 1) (+ 1 (D (cdr list)))))
  (else (D (cdr list))) ;recusive case
  )
)
  
(define (H list) ;Healthy
  (cond ((null? list) 0) ;base case
  (( and (eq? (cadar list) 0) (eq? (caddar list) 0) (+ 1 (H (cdr list)))))
  (else (H (cdr list))) ;recursive case
  )
)
  
(define (Pos1 list) ;Positive on Test1
  (cond ((null? list) 0) ;base case
    ((eq? (caddar list) 1) (+ 1 (Pos1 (cdr list))))
    (else (Pos1 (cdr list))) ;recursive case
  )
)

(define (Neg1 list) ;Negative on Test1
  (cond ((null? list) 0) ;base case
    ((eq? (caddar list) 0) (+ 1 (Neg1 (cdr list))))
    (else (Neg1 (cdr list))) ;recursive case
  )
)

(define (Pos2 list) ;Positive on Test2
  (cond ((null? list) 0) ;base case
    ((eq? (car(cdr(cdr(cdr(car list))))) 1) (+ 1 (Pos2 (cdr list))))
    (else (Pos2 (cdr list))) ;recursive case
  )
)

(define (Neg2 list) ;Negative on Test2
  (cond ((null? list) 0) ;base case
    ((eq? (car(cdr(cdr(cdr(car list))))) 0) (+ 1 (Neg2 (cdr list))))
    (else (Neg2 (cdr list))) ;recursive case
  )
)

(define (D_given_Pos1 list) ;Prob of Disease, given Positive Test1
  ( / (D list)(Pos1 list)))

(define (D_given_Pos2 list) ;Prob of Disease, given Positive Test2
  ( / (D list)(Pos2 list)))
  
(define (H_given_Neg1 list) ;Prob of Healthy, given Negative Test1
  ( / (H list)(Neg1 list)))
  
(define (H_given_Neg2 list) ;Prob of Healthy, given Negative Test2
  ( / (H list)(Neg2 list)))

(define (results list) ;Prints final results
  (cond ((and (> (D_given_Pos1 list) (D_given_Pos2 list)) (> (H_given_Neg1 list) (H_given_Neg2 list))) 'Test1)
  ;If P(D | Pos1) > P(D | Pos2) and P(H | Neg1) > P(H | Neg2) then report Test 1 is better
    ((and (> (D_given_Pos2 list) (D_given_Pos1 list)) (> (H_given_Neg2 list) (H_given_Neg1 list))) 'Test2) 
  ;Else If P(D | Pos2) > P(D | Pos1) and P(H | Neg2) > P(H | Neg1) then report Test 2 is better
  (else 'Neither)) ;Else report Neither test is better
)

(define sample1 '( ;First sample data
     (1   1   1   0)
     (2   1   1   1)
     (3   0   0   0)
     (4   0   0   0)
     (5   1   1   0)
     (6   0   0   0)
     (7   0   0   0)
     (8   1   0   1)
     (9   0   1   0)
     (10  0   0   0)
))

(define sample2 '( ;Second sample data
     (1   1   0   1)
     (2   1   1   0)
     (3   0   0   0)
     (4   0   0   1)
     (5   0   0   1)
     (6   0   0   0)
     (7   0   0   1)
     (8   0   1   1)
))