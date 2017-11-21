%% @author Korney
%% @doc @todo Add description to testerLogic.


-module(testerLogic).

%% ====================================================================
%% API functions
%% ====================================================================
-export([tester/1,getNodeAddress/1,notify/1]).

getNodeAddress(Atom)->
	nodeHelper:buildNodeAddress(Atom).

notify(Atom)->
	gen_event:notify(testerLogger,{Atom}).

tester(test)->
	notify(test),
	timer:sleep(500),
	notify(tested),
	gen_server:call({pmServer,getNodeAddress('pm')},{approvedFix}).

%% ====================================================================
%% Internal functions
%% ====================================================================


