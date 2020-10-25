# kill

## What is the difference between SIGSTOP and SIGTSTP?

Both signals are designed to suspend a process which will be eventually resumed with SIGCONT. The main differences between them are:

SIGSTOP is a signal sent programmatically (eg: kill -STOP pid ) while SIGTSTP (for signal - terminal stop) may also be sent through the tty driver by a user typing on a keyboard, usually Control-Z.

SIGSTOP cannot be ignored. SIGTSTP might be.

```
#define SIGCONT         18
#define SIGSTOP         19
#define SIGTSTP         20
```
