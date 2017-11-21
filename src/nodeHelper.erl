%% @author Korney
%% @doc @todo Add description to nodeHelper.


-module(nodeHelper).

%% ====================================================================
%% API functions
%% ====================================================================
-export([buildNodeAddress/1]).

buildNodeAddress(Atom)->
	list_to_atom(string:concat(erlang:atom_to_list(Atom), "@Korney")).


%% ====================================================================
%% Internal functions
%% ====================================================================


