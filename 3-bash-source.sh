dirName="$(dirname $0)"

echo "dirname: $dirName ($PWD)"
echo "BASH_SOURCE: $BASH_SOURCE"

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

source "$DIR/dependency.sh"

# ✅ Runs successully when executing it from current folder:
#   $ ./3-bash-source.sh
#   dirname: . (~/bash-sourcing)
#   BASH_SOURCE: ./3-bash-source.sh
#   Successfully sourced dependency.sh!

# ✅ Runs successully when executing it from parent folder:
#   $ cd ..
#   $ ./bash-sourcing/3-bash-source.sh
#   dirname: ./bash-sourcing (~)
#   BASH_SOURCE: ./bash-sourcing/3-bash-source.sh
#   Successfully sourced dependency.sh!

# ✅ Runs successfully when sourcing it from a script that changes
#   the working directory (e.g. cd-script.sh):
#   $ ./cd-script.sh 3-bash-source.sh
#   preivous dirname: . (~/bash-sourcing)
#   dirname: . (~)
#   BASH_SOURCE: ./bash-sourcing/3-bash-source.sh
#   Successfully sourced dependency.sh!
