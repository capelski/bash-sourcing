# bash-sourcing

Educative purposes repository with different approaches to sourcing (i.e. executing) bash scripts from within other scripts.

## 1-relative-path.sh

Source the script file by specifying the path **relative to the original file**.

- ✅ Runs successfully when executing it from current folder
- ❌ Fails to run when executing it from parent folder

## 2-dirname.sh

Source the script file by specifying the path **relative to the folder of the original file**.

- ✅ Runs successfully when executing it from current folder
- ✅ Runs successfully when executing it from parent folder
- ❌ Fails to run when sourcing it from a script that changes the working directory (e.g. cd-script.sh)

## 3-bash-source.sh

Source the script file by specifying the path **relative to the path of the original file**.

- ✅ Runs successfully when executing it from current folder
- ✅ Runs successfully when executing it from parent folder
- ✅ Runs successfully when sourcing it from a script that changes the working directory (e.g. cd-script.sh)
