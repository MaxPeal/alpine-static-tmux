from alpine:latest

env dest_prefix /usr/local/

workdir /tmp

run echo "http://dl-5.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
    echo "http://dl-5.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
    echo "https://mirror1.hs-esslingen.de/pub/Mirrors/alpine/latest-stable/main" >> /etc/apk/repositories; \
    echo "https://mirror1.hs-esslingen.de/pub/Mirrors/alpine/latest-stable/community" >> /etc/apk/repositories;

    
run apk update && \
    apk upgrade && \
    apk add make gcc musl-dev autoconf automake 

# libevent
env libevent_version 2.1.10
env libevent_name libevent-$libevent_version-stable
add https://github.com/libevent/libevent/releases/download/release-$libevent_version-stable/libevent-$libevent_version-stable.tar.gz /tmp/$libevent_name.tar.gz
run tar xvzf /tmp/$libevent_name.tar.gz && \
    cd $libevent_name && \
    ./configure --prefix=$dest_prefix --disable-shared && \
    make && \
    make install && \
    rm -fr /tmp/$libevent_name.tar.gz /tmp/$libevent_name

# ncurses
env ncurses_version 6.2
env ncurses_name ncurses-$ncurses_version
add https://ftp.gnu.org/gnu/ncurses/$ncurses_name.tar.gz /tmp/$ncurses_name.tar.gz 
run tar xvzf /tmp/$ncurses_name.tar.gz && \
    cd $ncurses_name && \
    ./configure --prefix=$dest_prefix --without-cxx --without-cxx-bindings --enable-static && \
    make && \
    make install && \
    rm -fr /tmp/$ncurses_name.tar.gz /tmp/$ncurses_name

# tmux
env tmux_version 3.1b
env tmux_name tmux-$tmux_version
add https://github.com/tmux/tmux/releases/download/$tmux_version/$tmux_name.tar.gz /tmp/$tmux_name.tar.gz
run tar xvzf /tmp/$tmux_name.tar.gz && \
    cd $tmux_name && \
    ./configure --prefix=$dest_prefix CFLAGS="-I$dest_prefix/include -I$dest_prefix/include/ncurses" LDFLAGS="-static -L$dest_prefix/lib -L$dest_prefix/include/ncurses -L$dest_prefix/include" && \
    env CPPFLAGS="-I$dest_prefix/include -I$dest_prefix/include/ncurses" LDFLAGS="-static -L$dest_prefix/lib -L$dest_prefix/include/ncurses -L$dest_prefix/include" make && \
    make install && \
    rm -fr /tmp/$tmux_name.tar.gz /tmp/$tmux_name && \
    mv $dest_prefix/bin/tmux $dest_prefix/bin/tmux-static && \
    strip $dest_prefix/bin/tmux-static

cmd ['/bin/sh']
