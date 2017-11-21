%% @author Korney
%% @doc @todo Add description to ownerLogic.


-module(ownerLogic).

%% ====================================================================
%% API functions
%% ====================================================================
-export([getNodeAddress/1,owner/1,notify/1]).

getNodeAddress(Atom)->
	nodeHelper:buildNodeAddress(Atom).

notify(Atom)->
	gen_event:notify(ownerLogger,{Atom}).

owner(fixReady)->
	notify(fixReady),
	timer:sleep(500),
	gen_server:call({clientServer,getNodeAddress('client')},{problemSolved});

owner(complain)->
	notify(complain),
	timer:sleep(500),
	gen_server:call({pmServer,getNodeAddress('pm')},{bugRequest}).
%% ====================================================================
%% Internal functions
%% ====================================================================


