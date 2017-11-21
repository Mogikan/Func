%% @author Korney
%% @doc @todo Add description to clientLogic.


-module(clientLogic).

%% ====================================================================
%% API functions
%% ====================================================================
-export([getNodeAddress/1,client/1,notify/1]).

notify(Atom)->
	gen_event:notify(clientLogger,{Atom}).

getNodeAddress(Atom)->
	nodeHelper:buildNodeAddress(Atom).

client(startLoop)->
	notify(complain),
	timer:sleep(500),
	%gen_server:call({ownerServer,getNodeAddress('owner')},{complain},infinity);
gen_server:call({global,'ownerServer'},{complain},infinity);


client(problemSolved)->
	notify(problemSolved),
	timer:sleep(500),
	gen_server:cast({clientServer,getNodeAddress('client')},{startLoop}).



%% ====================================================================
%% Internal functions
%% ====================================================================


