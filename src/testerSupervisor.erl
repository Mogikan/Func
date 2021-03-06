%% @author Korney
%% @doc @todo Add description to testerSupervisor.


-module(testerSupervisor).
-behaviour(supervisor).
-export([init/1,start_link/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([]).



%% ====================================================================
%% Behavioural functions
%% ====================================================================

%% init/1
%% ====================================================================
%% @doc <a href="http://www.erlang.org/doc/man/supervisor.html#Module:init-1">supervisor:init/1</a>
-spec init(Args :: term()) -> Result when
	Result :: {ok, {SupervisionPolicy, [ChildSpec]}} | ignore,
	SupervisionPolicy :: {RestartStrategy, MaxR :: non_neg_integer(), MaxT :: pos_integer()},
	RestartStrategy :: one_for_all
					 | one_for_one
					 | rest_for_one
					 | simple_one_for_one,
	ChildSpec :: {Id :: term(), StartFunc, RestartPolicy, Type :: worker | supervisor, Modules},
	StartFunc :: {M :: module(), F :: atom(), A :: [term()] | undefined},
	RestartPolicy :: permanent
				   | transient
				   | temporary,
	Modules :: [module()] | dynamic.
%% ====================================================================
init([]) ->
	AChild = {testerServerNode,{testerServer,start_link,[]},
	      permanent,2000,worker,[testerServer]},
	BChild = {testerLoggerNode,{testerLogger,start_link,[]},
	      permanent,2000,worker,[testerLogger]},
    {ok,{{one_for_all,0,1}, [AChild,BChild]}}.

start_link(Args) ->
	supervisor:start_link({local,?MODULE}, ?MODULE, Args).

%% ====================================================================
%% Internal functions
%% ====================================================================


