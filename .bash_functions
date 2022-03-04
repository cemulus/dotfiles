mcd() {
    mkdir -p $1
    cd -P $1
}

cls() { 
    cd "$1"
    ls
}

count() {
    fcount=$(ls -A $1 | wc -l)
    
    if [ -z "$1" ]; then
	    echo "${fcount} files in ${PWD##*/}"
    else
	    echo "${fcount} files in $1"
    fi
}

targz() {
    tar -zcvf $1.tar.gz $1
    rm -r $1
}

untargz() {
    tar -zxvf $1
    rm -r $1
}
