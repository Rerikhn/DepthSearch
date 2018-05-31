"This program calculates lists of a certain length."

(defun findList(len lst)
" This is a main function."    
; len parameter - user set a specific length of lists to find.
; lst parameter - user input some list.    
    
    
    (setq count 0)
	; count var - for counting lists that match the user's length.
    
    (recursion len lst)
    ; Call a recursive function to traverse all lists and sublists.
    
    (print count)
    ; Finish.
)

(defun recursion(len lst) 
" This function passes through the list items, if the list item is a list item, then call recursion.
  If not, then read length of current sublist and increase count by 1 if matches user length."
; two parameters are passed from main function.    
    
	(dolist (i lst)
    ; i - iteration item from current list.
        
        (cond ( (listp i) (cond ( (=(Length i)len) (setq count (+ count 1)) ))
                          (listp i) (recursion len i)))
	)    
)

(findlist 1 '((2 2 (2 (1) (1)) 2) (1 (5) 1 1)))