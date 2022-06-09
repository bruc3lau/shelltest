safeRunCommand() {
    "$@"
    if [ $? != 0 ]; then
        printf "Error when executing command: '$1'"
        exit $ERROR_CODE
    fi
}
task_arg="hostname;uname"
task_arg="all"
tasks=$(echo $task_arg | tr ";" "\n")
for task in $tasks
do
    safeRunCommand $task
done