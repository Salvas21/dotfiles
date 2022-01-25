# Function to open cli of docker container
# Takes either container id or name
# https://stackoverflow.com/a/34340688
dockerssh() {
    if [ -n "$1" ]
    then
        docker exec -it $1 /bin/bash
    fi
}
