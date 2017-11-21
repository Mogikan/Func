{application, programmerApp,
[{description, "programmer app"},
{vsn, "1.0"},
{modules, [programmerApp, programmerSupervisor,
 programmerServer, programmerLogic]},
 {registered, [ programmerServer, programmerSupervisor]},
 {applications, [kernel, stdlib]},
 {mod, {programmerApp,[]}},
 {start_phases, []}]}.