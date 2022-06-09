main(){
    echo "done!"
}
steps=(main)
for step in "${steps[@]}"; do
    set +e
    (
        set -e
        $step
    )
    error=$?
    set -e
    ((error)) && echo error
done
