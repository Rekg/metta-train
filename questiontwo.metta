(= (lookup-table (4 2 5 6) 2) "True")
(= (lookup-table (4 2 5 6) 10) "False")
(= (lookup-table (1) 1) "True")
(= (lookup-table () 5) "False")

(= (is-member $list $element)
   (lookup-table $list $element))

!(is-member (4 2 5 6) 2)
!(is-member (4 2 5 6) 10)
!(is-member (1) 1)
!(is-member () 5)