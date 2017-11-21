{application, ownerApp,
[{description, "owner app"},
{vsn, "1.0"},
{modules, [ownerApp, ownerSupervisor,
 ownerServer, ownerLogic]},
 {registered, [ ownerServer, ownerSupervisor]},
 {applications, [kernel, stdlib]},
 {mod, {ownerApp,[]}},
 {start_phases, []}]}.