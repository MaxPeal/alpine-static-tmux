from alpine:latest

env dest_prefix /usr/local/

workdir /tmp

run echo "http://dl-5.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
    echo "http://dl-5.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
    echo "https://mirror1.hs-esslingen.de/pub/Mirrors/alpine/latest-stable/main" >> /etc/apk/repositories; \
    echo "https://mirror1.hs-esslingen.de/pub/Mirrors/alpine/latest-stable/community" >> /etc/apk/repositories;

RUN echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://uk.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://dl-2.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://dl-4.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://dl-5.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://dl-8.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.yandex.ru/mirrors/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirrors.gigenet.com/alpinelinux/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror1.hs-esslingen.de/pub/Mirrors/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.leaseweb.com/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.fit.cvut.cz/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://alpine.mirror.far.fi/latest-stable/main" >> /etc/apk/repositories; \
echo "http://alpine.mirror.wearetriple.com/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.clarkson.edu/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://linorg.usp.br/AlpineLinux/latest-stable/main" >> /etc/apk/repositories; \
echo "http://ftp.yzu.edu.tw/Linux/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.aarnet.edu.au/pub/alpinelatest-stable/main" >> /etc/apk/repositories; \
echo "http://speglar.siminn.is/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirrors.dotsrc.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://ftp.halifax.rwth-aachen.de/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirrors.tuna.tsinghua.edu.cn/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirrors.ustc.edu.cn/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirrors.xjtu.edu.cn/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirrors.nju.edu.cn/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.lzu.edu.cn/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://ftp.acc.umu.se/mirror/alpinelinux.org/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.xtom.com.hk/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.csclub.uwaterloo.ca/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://alpinelinux.mirror.iweb.com/latest-stable/main" >> /etc/apk/repositories; \
echo "http://pkg.adfinis-sygroup.ch/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.ps.kz/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.rise.ph/alpine-linux/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.operationtulip.com/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirrors.ircam.fr/pub/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://alpine.42.fr/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.math.princeton.edu/pub/alpinelinux/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirrors.sjtug.sjtu.edu.cn/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://alpine.mirror.didstopia.com/latest-stable/main" >> /etc/apk/repositories; \
echo "http://ftp.icm.edu.pl/pub/Linux/distributions/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.ungleich.ch/mirror/packages/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://alpine.mirror.vexxhost.ca/latest-stable/main" >> /etc/apk/repositories; \
echo "http://sjc.edge.kernel.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://ewr.edge.kernel.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://ams.edge.kernel.org/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://download.nus.edu.sg/mirror/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://alpine.yourlabs.org/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.pit.teraswitch.com/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://mirror.reenigne.net/alpine/latest-stable/main" >> /etc/apk/repositories; \
echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://uk.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://dl-2.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://dl-4.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://dl-5.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://dl-8.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.yandex.ru/mirrors/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirrors.gigenet.com/alpinelinux/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror1.hs-esslingen.de/pub/Mirrors/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.leaseweb.com/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.fit.cvut.cz/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://alpine.mirror.far.fi/latest-stable/community" >> /etc/apk/repositories; \
echo "http://alpine.mirror.wearetriple.com/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.clarkson.edu/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://linorg.usp.br/AlpineLinux/latest-stable/community" >> /etc/apk/repositories; \
echo "http://ftp.yzu.edu.tw/Linux/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.aarnet.edu.au/pub/alpinelatest-stable/community" >> /etc/apk/repositories; \
echo "http://speglar.siminn.is/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirrors.dotsrc.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://ftp.halifax.rwth-aachen.de/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirrors.tuna.tsinghua.edu.cn/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirrors.ustc.edu.cn/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirrors.xjtu.edu.cn/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirrors.nju.edu.cn/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.lzu.edu.cn/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://ftp.acc.umu.se/mirror/alpinelinux.org/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.xtom.com.hk/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.csclub.uwaterloo.ca/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://alpinelinux.mirror.iweb.com/latest-stable/community" >> /etc/apk/repositories; \
echo "http://pkg.adfinis-sygroup.ch/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.ps.kz/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.rise.ph/alpine-linux/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.operationtulip.com/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirrors.ircam.fr/pub/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://alpine.42.fr/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.math.princeton.edu/pub/alpinelinux/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirrors.sjtug.sjtu.edu.cn/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://alpine.mirror.didstopia.com/latest-stable/community" >> /etc/apk/repositories; \
echo "http://ftp.icm.edu.pl/pub/Linux/distributions/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.ungleich.ch/mirror/packages/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://alpine.mirror.vexxhost.ca/latest-stable/community" >> /etc/apk/repositories; \
echo "http://sjc.edge.kernel.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://ewr.edge.kernel.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://ams.edge.kernel.org/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://download.nus.edu.sg/mirror/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://alpine.yourlabs.org/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.pit.teraswitch.com/alpine/latest-stable/community" >> /etc/apk/repositories; \
echo "http://mirror.reenigne.net/alpine/latest-stable/community" >> /etc/apk/repositories
    
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
