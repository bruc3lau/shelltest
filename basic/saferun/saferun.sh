safeRunCommand() {
    "$@"
    if [ $? != 0 ]; then
        printf "Error when executing command: '$1'"
        exit $ERROR_CODE
    fi
}

myecho(){
    echo $arg
    zz
}

command=echo
arg=666
# safeRunCommand $c $arg
safeRunCommand myecho