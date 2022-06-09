#######color code########
RED="31m"
GREEN="32m"
YELLOW="33m"
BLUE="36m"
FUCHSIA="35m"

colorEcho() {
    COLOR=$1
    echo -e "\033[${COLOR}${@:2}\033[0m"
}

#######get params#########
while [[ $# > 0 ]]; do
    key="$1"
    case $key in
    --remove)
        REMOVE=1
        ;;
    -h | --help)
        HELP=1
        ;;
    -k | --keep)
        INSTALL_WAY=1
        colorEcho ${BLUE} "keep config to update\n"
        ;;
    --zh)
        CHINESE=1
        colorEcho ${BLUE} "安装中文版..\n"
        ;;
    *)
        # unknown option
        ;;
    esac
    shift # past argument or value
done
#############################
