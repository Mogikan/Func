%% @author Korney
%% @doc @todo Add description to pmLogic.


-module(pmLogic).

%% ====================================================================
%% API functions
%% ====================================================================
-export([pm/1,getNodeAddress/1,notify/1]).

getNodeAddress(Atom)->
	nodeHelper:buildNodeAddress(Atom).

notify(Atom)->
	gen_event:notify(pmLogger,{Atom}).

pm(bugRequest)->
	notify(bugRequest),
	timer:sleep(500),
	gen_server:call({programmerServer,getNodeAddress('programmer')},{task});
pm(bugFixed)->
	notify(bugFixed),
	timer:sleep(500),
	gen_server:call({testerServer,getNodeAddress('tester')},{test});		
pm(approvedFix)->
	notify(fixReady),
	timer:sleep(500),
	gen_server:call({ownerServer,getNodeAddress('owner')},{fixReady}).
%% ====================================================================
%% Internal functions
%% ====================================================================


