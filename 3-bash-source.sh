dirName="$(dirname $0)"

echo "dirname: $dirName ($PWD)"
echo "BASH_SOURCE: $BASH_SOURCE"

DIR="${BASH_SOURCE%/*}"

source "$DIR/dependency.sh"

# ✅ Runs successfully when executing it from current folder:
#   $ ./3-bash-source.sh
#   dirname: . ($HOME/bash-sourcing)
#   BASH_SOURCE: ./3-bash-source.sh
#   Successfully sourced dependency.sh!

# ✅ Runs successfully when executing it from parent folder:
#   $ cd ..
#   $ ./bash-sourcing/3-bash-source.sh
#   dirname: ./bash-sourcing ($HOME)
#   BASH_SOURCE: ./bash-sourcing/3-bash-source.sh
#   Successfully sourced dependency.sh!

# ✅ Runs successfully when sourcing it from a script that changes
#   the working directory (e.g. cd-script.sh):
#   $ ./cd-script.sh 3-bash-source.sh
#   previous dirname: . ($HOME/bash-sourcing)
#   dirname: . ($HOME)
#   BASH_SOURCE: ./bash-sourcing/3-bash-source.sh
#   Successfully sourced dependency.sh!
