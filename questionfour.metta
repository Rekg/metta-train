; Define the notEmpty predicate
(= (notEmpty ()) False)
(= (notEmpty $x) True)

; Define extracter function
(= (extracter () $pred) ())
(= (extracter ($x . $xs) $pred)
   (if ($pred $x)
       ($x . (extracter $xs $pred))
       (extracter $xs $pred)))

; Test case
!(extracter ((a) (b g) (d e) ()) notEmpty) ; Expected output: ((a) (b g) (d e))
