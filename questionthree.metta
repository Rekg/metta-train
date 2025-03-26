(= (removeDuplicates $list)
   (unique (superpose $list)))  ; Apply `superpose` directly

(= (unique ()) ())
(= (unique $list) (collapse $list))  ; Collapse the unique elements into a single list

; Test cases
!(removeDuplicates (1 2 3 2))   ; Expected output: (1 2 3)
!(removeDuplicates (1 1 1 1))   ; Expected output: (1)
!(removeDuplicates (1 2 3 4))   ; Expected output: (1 2 3 4)
!(removeDuplicates ())          ; Expected output: ()
!(removeDuplicates (5 6 7 5 6)) ; Expected output: (5 6 7)
