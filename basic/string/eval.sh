task_arg="hostname;uname"
tasks=$(echo $task_arg | tr ";" "\n")
for task in $tasks
do
    $task
done