# Reflectivity-Debugging-Experiments

This packages contains debugging experiments based on Reflectivity. These experiments are available through the suggestions menu in a class browser. Models are kept apart of Pharo Reflectivity core and tools for now, but they could homogeneously be integrated.

## Hit count
Hit count breakpoints halt the execution after being reached a given number of times. They are available through the Suggestion menu. After being reached, the counter of a hit count brekpoint must be manually reset through the gutter icon in the ;ethod it is installed in from the class browser.

## Tracepoint
Tracepoints are specific kind of breakpoints: instead of halting the execution, it executes custom trace behavior. This behavior can be specified through the Suggestions menu in a class browser, after selecting the ast node to trace in the code.

Sometimes, some Reflectivity reifications are not working, depending on the node and the context. This is currently under investigation.

Known bugs and limitations: 
- When put on temporary variables, an #isGlobal DNU is raised in the Reflectivity classes. This bug is solved but not integrated yet.
- Sometimes putting multiple tracepoints within the same method disables all tracepoints installed in this method.
- It is not possible to refer to local variables by name.
- There are problems and unfinished business in the installation gui (syntac highlighting, visual updates...).

## Tracepoint definition from source code menu
![alt text](https://github.com/StevenCostiou/Reflectivity-Debugging-Experiments/blob/master/tracepoint-ex.png)
## Tracepoint result after execution
![alt text](https://github.com/StevenCostiou/Reflectivity-Debugging-Experiments/blob/master/tracepoint-ex-2.png)
