-module(phone_digit_assignment).
-export([start/1, phone_digit_assignment_test/0]).
-author('Mohit Choudhary').


%%***** API Function to return all possible words or combination of words from the provided dictionary***************************
%%***********************************************************************************************************************

-spec start(integer()) -> list(any()).
start(N) when is_integer(N) ->
        Mapped_list = generate_word(get_digits_list(N)),
        arrange_mapped_list(Mapped_list,[""]);
start(_) -> "please enter correct number".


%%***** Function to execute default test cases***************************
%%*************************************************************************
-spec phone_digit_assignment_test() -> {atom(), atom()}.
phone_digit_assignment_test()->
	{execute_test1(), execute_test2()}.

	
	
%%********************* Inbuilt Functions***************************
%%******************************************************************
	
generate_word(N)->
        [digit_map(Digit) || Digit <- N].

%% [["a", "b", "c"],    ["d", "e", "f"]]
arrange_mapped_list([], Op)-> Op;
arrange_mapped_list([H|T], Op_list)->
        arrange_mapped_list(T, [Op ++ Word || Word <- H, Op <- Op_list]).

%% [1,0,3,8,2]
get_digits_list(N)->
        Stringe_num = integer_to_list(N),
        [list_to_integer([Digit]) || Digit <- Stringe_num].

digit_map(2)-> ["a", "b", "c"];
digit_map(3) -> ["d", "e", "f"];
digit_map(4) -> ["g", "h", "i"];
digit_map(5) -> ["j", "k", "l"];
digit_map(6) -> ["m", "n", "o"];
digit_map(7) -> ["p", "q", "r", "s"];
digit_map(8) -> ["t", "u", "v"];
digit_map(9) -> ["w", "x", "y", "z"];
digit_map(_) -> [].



execute_test1()->
        Entire_list = start(6686787825),
        Expected_list = [["motor", "usual"], ["noun", "struck"], ["nouns", "truck"], ["nouns", "usual"], ["onto", "struck"], "motortruck"],
        verify(Entire_list, Expected_list).

execute_test2()->
        Entire_list = start(2282668687),
        Expected_list = [["act", "amounts"], ["act", "contour"], ["acta", "mounts"], ["bat", "amounts"], ["bat", "contour"], ["cat", "contour"], "catamounts"],
         verify(Entire_list, Expected_list).



verify(Entire_list, Expected_list)->
        case lists:member(false, check_expected_op(Entire_list, Expected_list)) of
                true -> 'program_unsuccessful';
                false -> 'program_successful'
        end.

check_expected_op(Entire_list, Expected_list)->
          [lists:member(lists:flatten(H), Entire_list) || H <- Expected_list].


