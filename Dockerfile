FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

#Colors
RUN bash -c 'echo -e "Dpkg::Progress-Fancy "1";\nAPT::Color "1";" > /etc/apt/apt.conf.d/99geekosupremo'

RUN set -e -x; \
        echo "deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu xenial main " >> /etc/apt/sources.list.d/apt-fast.list; \
        echo "deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu xenial main " >> /etc/apt/sources.list.d/apt-fast.list; \
        apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys DC058F40; \
        apt-get update; \
        apt-get install --no-install-recommends -y apt-fast; \
          apt-fast install -y \
            net-tools \
            traceroute \
            netcat \
            dnsutils \
            iputils-ping \
            curl \
            nano \
            ifupdown2 \
            bash-completion \
            supervisor \
            locales \
            software-properties-common \
            snmpd snmptrapd snmp snmp-mibs-downloader \
            wget \
            git-core \
            unzip \
            default-mta \
            libssl-dev \
            ca-certificates \
            build-essential \
            libtool \
            openssl \
            python \
            libldap2-dev \
            freeradius \
            freeradius-ldap \
            freeradius-utils \
            pkg-config \
            subversion \
            libjansson-dev \
            autoconf \
            automake \
            libxml2-dev \
            libncurses5-dev \
            unixodbc \
            unixodbc-dev \
            libasound2-dev \
            libogg-dev \
            libvorbis-dev \
            libneon27-dev \
            libspandsp-dev \
            uuid \
            uuid-dev \
            sqlite3 \
            libsqlite3-dev \
            sqlite \
            aria2 \
            libgnutls-dev \
&& rm -rf /var/lib/apt/lists/* \
&& rm -rf /var/cache/oracle-jdk8-installer
