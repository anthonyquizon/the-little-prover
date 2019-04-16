#lang dracula

(include-book "j-bob-lang" :dir :teachpacks)

(atom '())

(dethm atom/cons (x y)
  (equal (atom (cons x y)) 'nil))

(dethm car/cons (x y)
  (equal (car (cons x y)) x))

(dethm cdr/cons (x y)
  (equal (cdr (cons x y)) y))

(dethm equal-same (x)
  (equal (equal x x) 't))

(dethm equal-swap (x y)
  (equal (equal x y) (equal y x)))

;; 43
(equal 'eggs '(ham))

;; 44
(car
  (cons 't
        '(and crumpets)))

;; 47

;;54
(car/cons 
  (car (cons (cdr 'x) (car 'y))))
