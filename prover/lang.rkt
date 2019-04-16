#lang racket

(provide 
  define-theorem
  num
  equal
  atom
  (except-out (all-from-out racket)
              car
              cdr
              + 
              <
              if)
  (rename-out [prover/car car]
              [prover/cdr cdr]
              [prover/+ +]
              [prover/< <]
              [prover/if if]))

(define (num x) (if (number? x) x 0))

(define (if/nil Q A E)
  (if (equal? Q 'nil) (E) (A)))

(define (atom x) (if (pair? x) 'nil 't))
(define (prover/car x) (if (pair? x) (car x) '()))
(define (prover/cdr x) (if (pair? x) (cdr x) '()))
(define (equal x y) (if (equal? x y) 't 'nil))

(define (natp x)
  (if (integer? x) (if (< x 0) 'nil 't) 'nil))

(define (prover/+ x y) (+ (num x) (num y)))
(define (prover/< x y)
  (if (< (num x) (num y)) 't 'nil))

(define-syntax prover/if
  (syntax-rules ()
    [(_ Q A E)
     (if/nil Q (lambda () A) (lambda () E))]))

(define-syntax define-theorem
  (syntax-rules ()
    [(_ name (arg ...) body)
     (define (name arg ...) body)]))


