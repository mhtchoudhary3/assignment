# assignment

************ phone_digit_assignment ************
phone_digit_assignment supports the following functions.
  
  Given a 10 digit phone number, you must return all possible words or combination of words from the provided dictionary, that can be mapped back as a whole to the number.

	With this we can generate numbers like 1-800-motortruck which is easier to remember then 1-800-6686787825
	The phone number mapping to letters is as follows:

		2 = a b c
		3 = d e f
		4 = g h i
		5 = j k l
		6 = m n o
		7 = p q r s
		8 = t u v
		9 = w x y z
		
		The phone numbers will never contain a 0 or 1. 
		
********* How to install the phone_digit_assignment  in development environment ********

Prerequisites
. Erlang version is R14B03

**Compile ECANS**
	c(phone_digit_assignment).

**Load the Erlang program**




***************Some Notes ***************************
1) Below tests were performed during unit testing :
	10> test1:start(234).
	["adg","bdg","cdg","aeg","beg","ceg","afg","bfg","cfg",
	"adh","bdh","cdh","aeh","beh","ceh","afh","bfh","cfh","adi",
	"bdi","cdi","aei","bei","cei","afi","bfi","cfi"]
	
	4> rp(test1:start(665)).
	["mmj","nmj","omj","mnj","nnj","onj","moj","noj","ooj",
	"mmk","nmk","omk","mnk","nnk","onk","mok","nok","ook","mml",
	"nml","oml","mnl","nnl","onl","mol","nol","ool"]
 
2) Default test function is provided which will excute below functionality: 

	1)phone number : 6686787825 
	  Should conatin Expected List :  [["motor", "usual"], ["noun", "struck"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "struck"], "motortruck"]
		
	2)phone number :  2282668687 
	  Should conatin Expected List : [["act", "amounts"], ["act", "contour"], ["acta", "mounts"], ["bat", "amounts"], ["bat", "contour"], ["cat", "contour"], "catamounts"]
  3) *API Function : 
	11> phone_digit_assignment:phone_digit_assignment_test().
		{'program_successful','program_successful'}
