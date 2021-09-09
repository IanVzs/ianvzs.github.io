---
title: tips Of Debuggers
date: 2019-01-10 12:21:12
categories: [tip, debug, learning]
tags: [debuger, pdb, gdb, learning]
---


### GDB
![gdb](https://www.linuxprobe.com/wp-content/uploads/2017/02/175653ff8gl0f5flw4f518.jpg "tmp")

First and foremost, you will need to compile your program with the flag "-g" (for debug) to run it via GDB. From there the syntax to start debugging is:
```shell
$ gdb -tui [executable's name]
```
placing breakpoints
```gdb
break [line number]     or   b [line number]

or [file name]:[line number]
or [function name]
```
And even better, can set conditional breakpoints:
```gdb
break [line number] if [condition]
```
For example, can set (if have a loop)
```gdb
break 11 if i > 97
```
Place a "watchpoint" which will pause the program if a variable is modified:
```gdb
watch [variable]
```
Once our breakpoints are set, we can run the program with the "run" command, or simply:
```gdb
r [command line arguments if your program takes some]
```
How we got to that point:
```gdb
bt 
```
Display all the local variables and their current values.
```gdb
info locals
```
Of course:
```gdb
p [variable]       ptype [variable]

step 

next

delete [line number]

continue

quit
```
Playing with fire. As well do it all the way:
```gdb
set var [variable] = [new value]
```

