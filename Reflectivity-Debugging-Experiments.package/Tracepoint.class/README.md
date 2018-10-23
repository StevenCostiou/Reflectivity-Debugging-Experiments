Tracepoints are specific kind of breakpoints: instead of halting the execution, it executes custom trace behavior. This behavior can be specified through the Suggestions menu in a class browser, after selecting the ast node to trace in the code.

Sometimes, some Reflectivity reifications are not working, depending on the node and the context. This is currently under investigation.

Known bug: When put on temporary variables, an #isGlobal DNU is raised in the Reflectivity classes. This bug is solved but not integrated yet.