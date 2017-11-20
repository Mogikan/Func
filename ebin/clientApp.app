{application, demoapp,
[{description, "Factorial calculator"},
{vsn, "1.0"},
{modules, [demo_app, demo_supervisor,
 factorial_server, demo_lib]},
 {registered, [ factorial_server, demo_supervisor]},
 {applications, [kernel, stdlib]},
 {mod, {demo_app,[]}},
 {start_phases, []}]}.