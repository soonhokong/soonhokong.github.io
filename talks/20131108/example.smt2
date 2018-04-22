(set-logic QF_NRA)
(declare-fun x () Real)
(declare-fun res () Real)
(assert (<= 0.0 x))
(assert (<= x 0.25))
(assert (<= -1.0 res))
(assert (<= res 1.0))
(assert (= res
           (+ x
              (* (+ (*
                     (+ (*
                         (+ (*
                             (+ (* 0.00184028451407337715652
                                   (* x x)) 0.0266422703033638609560)
                             (* x x)) 0.146350472652464452805)
                         (* x x)) 0.325778796408930981787)
                     (* x x)) 0.214982415960608852501)
                 (* (* x x) x)))
           ))
(assert (not
         (and
          (<= (- res (sin x)) 0.0001)
          (<= (- (sin x) res) 0.0001))))
(check-sat)
