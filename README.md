# bash-sourcing

Educative purposes repository with different approaches to sourcing (i.e. executing) bash scripts from within other scripts.

## 1-relative-path.sh

Source the script file by specifying the path **relative to the original file**.

✅ Runs successfully when executing it from current folder
```bash
$ ./1-relative-path.sh
Successfully sourced dependency.sh!
```
❌ Fails to run when executing it from parent folder
```bash
$ cd ..
$ ./bash-sourcing/1-relative-path.sh
./bash-sourcing/1-relative-path.sh: line 1: ./dependency.sh: No such file or directory
```

## 2-dirname.sh

Source the script file by specifying the path **relative to the folder of the original file**.

✅ Runs successfully when executing it from current folder
```bash
$ ./2-dirname.sh
dirname: . ($HOME/bash-sourcing)
Successfully sourced dependency.sh!
```
✅ Runs successfully when executing it from parent folder
```bash
$ cd ..
$ ./bash-sourcing/2-dirname.sh
dirname: ./bash-sourcing ($HOME)
Successfully sourced dependency.sh!
```
❌ Fails to run when sourcing it from a script that changes the working directory *(e.g. cd-script.sh)*
```bash
$ ./cd-script.sh 2-dirname.sh
previous dirname: . ($HOME/bash-sourcing)
dirname: . ($HOME)
./bash-sourcing/2-dirname.sh: line 5: ./dependency.sh: No such file or directory
```

## 3-bash-source.sh

Source the script file by specifying the path **relative to the path of the original file**.

✅ Runs successfully when executing it from current folder
```bash
$ ./3-bash-source.sh
dirname: . ($HOME/bash-sourcing)
BASH_SOURCE: ./3-bash-source.sh
Successfully sourced dependency.sh!
```
✅ Runs successfully when executing it from parent folder
```bash
$ cd ..
$ ./bash-sourcing/3-bash-source.sh
dirname: ./bash-sourcing ($HOME)
BASH_SOURCE: ./bash-sourcing/3-bash-source.sh
Successfully sourced dependency.sh!
```
✅ Runs successfully when sourcing it from a script that changes the working directory *(e.g. cd-script.sh)*
```bash
$ ./cd-script.sh 3-bash-source.sh
previous dirname: . ($HOME/bash-sourcing)
dirname: . ($HOME)
BASH_SOURCE: ./bash-sourcing/3-bash-source.sh
Successfully sourced dependency.sh!
```
