# Changes the working directory to the parent folder and executes
# the script file received as the first parameter (i.e. $1)

script=$1
if [ -z $script ]; then
  echo "Missing the script file to be executed"
  echo "Usage: cd-script.sh my-script.sh"
  exit 1
fi

dirName="$(dirname $0)"
echo "preivous dirname: $dirName ($PWD)"

cd ..

source "./bash-sourcing/$script"
