{application, testerApp,
[{description, "tester app"},
{vsn, "1.0"},
{modules, [testerApp, testerSupervisor,
 testerServer, testerLogic]},
 {registered, [ testerServer, testerSupervisor]},
 {applications, [kernel, stdlib]},
 {mod, {testerApp,[]}},
 {start_phases, []}]}.