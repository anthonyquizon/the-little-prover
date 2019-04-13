#lang dracula

(include-book "j-bob-lang" :dir :teachpacks)

(atom '())

(dethm atom/cons (x y)
  (equal (atom (cons x y)) 'nil))

(dethm car/cons (x y)
  (equal (car (cons x y)) x))
