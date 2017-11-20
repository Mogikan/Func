{application, clientApp,
[{description, "Client app"},
{vsn, "1.0"},
{modules, [clientApp, clientSupervisor,
 clientServer, clientLogic]},
 {registered, [ clientServer, clientSupervisor]},
 {applications, [kernel, stdlib]},
 {mod, {clientApp,[]}},
 {start_phases, []}]}.