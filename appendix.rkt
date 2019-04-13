#lang dracula

(include-book "j-bob-lang" :dir :teachpacks)
(include-book "j-bob" :dir :teachpacks)

(J-bob/step (prelude)
  '(car (cons 'ham '(cheese)))
  '((() (car/cons 'ham '(cheese)))))
