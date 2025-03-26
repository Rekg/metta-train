(Parent Bob Ann)
(Parent Bob Joe)
(Parent Ann Mary)
(Parent Ann John)


(= (find-children $parent)
   (match &self (Parent $parent $child) $child))

(= (find-grandchildren $x)
   ((find-children (find-children $x))))
(= (is-sibiling $x $y)
      (match &self (Parent $n $x) (match &self (Parent $n $x) True)) )
! (find-children Bob)
! (find-grandchildren Bob)
!(is-sibiling Mary John)