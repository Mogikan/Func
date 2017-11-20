%% @author Korney
%% @doc @todo Add description to clientLogic.


-module(clientLogic).

%% ====================================================================
%% API functions
%% ====================================================================
-export([client/1,getNodeAddress/0]).



client(startLoop)->
gen_event:notify(clientLogger,{complain}),
gen_server:call(ownerServer,getNodeAddress(),{complain});



client(problemSolved)->
gen_event:notify(clientLogger, {problemSolved})
gen_server:call({clientServer,getNodeAddress()},{startLoop}),
ok.

getNodeAddress()->
nodeHelper:buildNodeAddress(client).

%% ====================================================================
%% Internal functions
%% ====================================================================


