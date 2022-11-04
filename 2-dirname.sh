dirName="$(dirname $0)"

echo "dirname: $dirName ($PWD)"

source "$dirName/dependency.sh"

# ✅ Runs successfully when executing it from current folder:
#   $ ./2-dirname.sh
#   dirname: . ($HOME/bash-sourcing)
#   Successfully sourced dependency.sh!

# ✅ Runs successfully when executing it from parent folder:
#   $ cd ..
#   $ ./bash-sourcing/2-dirname.sh
#   dirname: ./bash-sourcing ($HOME)
#   Successfully sourced dependency.sh!

# ❌ Fails to run when sourcing it from a script that changes
#   the working directory (e.g. cd-script.sh):
#   $ ./cd-script.sh 2-dirname.sh
#   previous dirname: . ($HOME/bash-sourcing)
#   dirname: . ($HOME)
#   ./bash-sourcing/2-dirname.sh: line 5: ./dependency.sh: No such file or directory
