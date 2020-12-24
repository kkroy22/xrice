GIT_REPO="$HOME/Downloads/appdata/xrice"

XUR="kroy"

if [ "$USER" != $XUR ]; then
    (cd $GIT_REPO && git pull && git submodule update --init --recursive)
fi

NIXPS1=$PS1

ROTC='\e[0;30;41m'
REGC='\e[0;30;42m'
SUDC='\e[0;30;43m'
OFFC='\e[0;97;100m'
DIRC='\e[30;104m'
ENDC='\e[0m'

ROTPS1="\[$ROTC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$ROTC\]>\[$ENDC\]"
SUDPS1="\[$SUDC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$SUDC\]>\[$ENDC\]"
REGPS1="\[$REGC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$REGC\]>\[$ENDC\]"
OFFPS1="\[$OFFC\][\u]\[$ENDC\]-\[$DIRC\][\w]\[$ENDC\]\n\[$OFFC\]>\[$ENDC\]"

if [ "$USER" = "root" ]; then
    PS1=$ROTPS1
elif [ "$USER" = "bikky" ]; then
    PS1=$SUDPS1
elif [ "$USER" = "compute" ]; then
    PS1=$REGPS1
elif [ "$USER" = "kroy" ]; then
    PS1=$REGPS1
else
    PS1=$NIXPS1
fi


XXX=$HOME/Downloads/appdata/xrice/scripts
CARGO=$HOME/.cargo/bin
JAVA_HOME=$HOME/Downloads/appdata/jdk/amazon-corretto-8.265.01.1-linux-x64
# JAVA_HOME=$HOME/Downloads/appdata/jdk/amazon-corretto-11.0.8.10.1-linux-x64
CODE=$HOME/Downloads/appdata/vs-code/bin

PATH=$PATH:$XXX:$CARGO:$CODE:$JAVA_HOME/bin
