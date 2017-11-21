%% @author Korney
%% @doc @todo Add description to programmerLogic.


-module(programmerLogic).

%% ====================================================================
%% API functions
%% ====================================================================
-export([programmer/1,getNodeAddress/1,notify/1]).

getNodeAddress(Atom)->
	nodeHelper:buildNodeAddress(Atom).

notify(Atom)->
	gen_event:notify(programmerLogger,{Atom}).

programmer(task)->
	notify(bugRequest),
	timer:sleep(500),
	notify(bugFixed),
	gen_server:call({pmServer,getNodeAddress('pm')},{bugFixed}).



%% ====================================================================
%% Internal functions
%% ====================================================================


