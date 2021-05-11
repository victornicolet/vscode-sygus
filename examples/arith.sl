(set-logic DTLIA)

(define-fun max ((x Int) (y Int)) Int
    (ite (>= x y) x y)
)

(define-fun min ((x Int) (y Int)) Int
    (ite (<= x y) x y)
)

(define-const x Int 0)
(define-const y Int 1)

(synth-fun f ((x Int) (y Int)) Int
    ;;Non terminals of the grammar
    ((I Int) (B Bool))
    ;;Define the grammar
    ((I Int (x y 0 1 (ite B I I))) (B Bool ((>= x y) (<= x y))))
)

(define-sort Ifht () Int)

(declare-var x3 Int)
(declare-const x1 Int)
(declare-const x2 Int)


(constraint (= (max x1 x2) (f x1 x2)))

