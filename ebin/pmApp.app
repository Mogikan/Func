{application, pmApp,
[{description, "pm app"},
{vsn, "1.0"},
{modules, [pmApp, pmSupervisor,
 pmServer, pmLogic]},
 {registered, [ pmServer, pmSupervisor]},
 {applications, [kernel, stdlib]},
 {mod, {pmApp,[]}},
 {start_phases, []}]}.