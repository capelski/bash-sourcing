source ./dependency.sh

# ✅ Runs successfully when executing it from current folder:
#   % ./1-relative-path.sh
#   Successfully sourced dependency.sh!

# ❌ Fails to run when executing it from parent folder:
#   $ cd ..
#   $ ./bash-sourcing/1-relative-path.sh
#   ./bash-sourcing/1-relative-path.sh: line 1: ./dependency.sh: No such file or directory
