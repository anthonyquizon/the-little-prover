#lang dracula

(include-book "j-bob-lang" :dir :teachpacks)
(include-book "j-bob" :dir :teachpacks)

;;; 3
(J-Bob/step (prelude)
  '(car (cons 'ham '(cheese)))
  '())

;;; 7
(J-Bob/step (prelude)
  '(car (cons 'ham '(cheese)))
  '((() (car/cons 'ham '(cheese)))))



