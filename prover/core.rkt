#lang s-exp "lang.rkt"

(define (list0) '())
(define (list0? x) (equal x '()))

(define (list1 x) (cons x (list0)))
(define (list1? x)
  (if (atom x) 
    'nil (list0? (cdr x))))
     


;(defun defs? (known-defs defs)
  ;(if (atom defs)
    ;'t
    ;(if (def? known-defs (car defs))
      ;(defs? (list-extend known-defs (car defs))
             ;(cdr defs))
      ;'nil)))

;(defun prover/step (defs e steps)
  ;(if (defs? '() defs)
    ;(if (expr? defs 'any e)
      ;(if (rewrite/steps defs e steps)
        ;e))))
  
