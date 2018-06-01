#!/usr/bin/env bash
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
export ZSH=${HOME}/.oh-my-zsh
ZSH_THEME="jtriley"
plugins=(
    ant
    mvn
    bazel
    spring
    rust
    cargo
    rustup
    npm
    git
    git-extras
    zsh-completions
#    zsh-autosuggestions
    zsh-navigation-tools
    zsh-history-substring-search
    colorize
)

func ssproxy() {
    sslocal -s $1 -p $2 -l 1080 -k $3  -t 300 -m aes-256-cfb
}

# ########################################## User Configuration #####################################
export LOCAL=${HOME}/local

export VOLUMES_SD=/Volumes/sd
export VOLUMES_SD_SERVERS=${VOLUMES_SD}/servers
export VOLUMES_SD_REPOS=${VOLUMES_SD}/repos
export VOLUMES_TOSHIBA=/Volumes/Toshiba
export SPRINGCLI_HOME=${LOCAL}/springcli

# 语言工具
export RUBY_HOME=${LOCAL}/ruby
export OCAML_HOME=${LOCAL}/ocaml
# export GROOVY_HOME=${LOCAL}/groovy
export PY2_HOME=${LOCAL}/python2
export PY3_HOME=${LOCAL}/python3
export GOROOT=${LOCAL}/go
export NODE_PATH=${LOCAL}/node
export NODE_GLOBAL_PATH=${VOLUMES_SD_REPOS}/node_global
#export RUST_HOME=${LOCAL}/rust
export CARGO_HOME=${VOLUMES_SD}/repos/cargo
export RUSTUP_HOME=${VOLUMES_SD}/repos/rustup
export RUST_SRC_PATH=${RUSTUP_HOME}/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src
export GCC_HOME=${LOCAL}/gcc
export CLANG_HOME=${VOLUMES_SD_REPOS}/clang
export IGV_HOME=${LOCAL}/igv

# 开发辅助
export MYSQL_BASE_DIR="/Volumes/Toshiba/Developer/mysql"
export MYSQL_DATA_DIR="/Volumes/Toshiba/Developer/data/mysql"
export MYSQL_LOGS_DIR="/Volumes/Toshiba/Developer/data/logs/mysql"
export GETTEXT_HOME=${LOCAL}/gettext
export BTRACE_HOME=${LOCAL}/btrace
export HTOP_HOME=${LOCAL}/htop
export FISH_HOME=${LOCAL}/fish

# 运行时环境变量
export PKG_CONFIG=${LOCAL}/bin/pkg-config # pkg-config
export PKG_CONFIG_PATH=${PKG_CONFIG}
export PKG_CONFIG_LIBDIR=${LOCAL}/lib/pkgconfig
export CFLAGS="-I${LOCAL}/include -I${LOCAL}/include/lzma -I${LOCAL}/include/openssl -I${LOCAL}/include/readline"
export CXXFLAGS=${CFLAGS}
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${LOCAL}/lib"
export BOOST_ROOT=${LOCAL}
export OPENSSL_CFLAGS=${LOCAL}/bin/openssl   # openssl
export OPENSSL_LIBS=${LOCAL}/lib # openssl lib
export OPAMROOT=${VOLUMES_SD_REPOS}/opam
export OCAML_TOPLEVEL_PATH=${VOLUMES_SD_REPOS}/ocaml
export COREUTILS=${LOCAL}/coreutils
export GOPATH=${VOLUMES_SD_REPOS}/go/gopath
export GOCACHE=${VOLUMES_SD_REPOS}/go/gocache

# compilers
export JAVACC_HOME=${LOCAL}/javacc
export CHEZ_SCHEME_HOME=${LOCAL}/chez_scheme
# 服务
#export ZK_HOME=${VOLUMES_TOSHIBA}/Developer/zookeeper
export ZK_HOME=${LOCAL}/zookeeper
export REDIS_HOME=${VOLUMES_SD_SERVERS}/redis
export KOTLIN_NATIVE_HOME=${VOLUMES_SD_SERVERS}/kotlin-native
export NGINX=${LOCAL}/nginx
export MYSQL_SHELL=${LOCAL}/mysqlsh
export WGET_HOME=${LOCAL}/wget

# 打包编译工具
export MX_HOME=${LOCAL}/mx
export CMAKE_HOME=${LOCAL}/cmake
export M2_HOME=${LOCAL}/maven           # maven
export MAVEN_CONFIG=${M2_HOME}/conf
export MAVEN_SKIP_RC=true
export ANT_HOME=${LOCAL}/ant            # ant
export GRADLE_HOME=${LOCAL}/gradle      # gradle
export NASM=${LOCAL}/nasm               # nasm
export BAZEL_HOME=${LOCAL}/bazel

# repos
export HASKELL_BIN=${VOLUMES_SD}/repos/haskell
export GRADLE_USER_HOME=${VOLUMES_SD}/repos/gradle

# 日常工具
# export ARIA2_HOME=${LOCAL}/aria2            # aria2
# export YARN_HOME=${LOCAL}/yarn              # yarn
export FFMPEG_HOME=${LOCAL}/ffmpeg

# export JAVA_6_HOME=${LOCAL}/jdk6/Home
#export JAVA_7_HOME=$(/usr/libexec/java_home -v 1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v 1.8)
#export JAVA_9_HOME=$(/usr/libexec/java_home -v 9)
export JAVA_9_ZERO_HOME='/Library/Java/JavaVirtualMachines/jdk-9.0.4.zero.jdk/Contents/Home'
export JAVA_10_HOME=$(/usr/libexec/java_home -v 10)
export JAVA_11_HOME=$(/usr/libexec/java_home -v 11)
export GRAAL_HOME='/Library/Java/JavaVirtualMachines/graalvm/Contents/Home'
#export JDK_17_HOME=${JAVA_7_HOME}
export JDK_18_HOME=${JAVA_8_HOME}
#export JDK_19_HOME=${JAVA_9_HOME}
#export JDK_19_ZERO_HOME=${JAVA_9_ZERO_HOME}
export JDK_10_HOME=${JAVA_10_HOME}
export JDK_11_HOME=${JAVA_11_HOME}
# export ZULU_JDK_18_HOME=${LOCAL}/zulujdk8
# export ZULU_JDK_19_HOME=${LOCAL}/zulujdk9
export KOTLIN_HOME=${LOCAL}/kotlinc

#alias jdk6='export JAVA_HOME=${JDK_16_HOME}'
#alias jdk7="export JAVA_HOME=${JAVA_7_HOME}"
alias jdk8="export JAVA_HOME=${JAVA_8_HOME}"
#alias jdk9="export JAVA_HOME=${JAVA_9_HOME}"
#alias jdk90="export JAVA_HOME=${JDK_19_ZERO_HOME}"
alias jdk10="export JAVA_HOME=${JAVA_10_HOME}"
alias jdk11="export JAVA_HOME=${JAVA_11_HOME}"
alias graal="export JAVA_HOME=${GRAAL_HOME}"
# alias zulujdk8="export JAVA_HOME=${ZULU_JDK_18_HOME}"
# alias zulujdk9="export JAVA_HOME=${ZULU_JDK_19_HOME}"

export JDK_BOOT_DIR=${JAVA_8_HOME}

jdk8

export DEF_JAVA_OPTS="-Xms256M \
-Xmx300M \
-Xverify:none \
-XX:ReservedCodeCacheSize=100m \
-XX:+UseG1GC \
-XX:+AlwaysPreTouch \
-XX:+UseNUMA \
-XX:+UseCompressedOops \
-XX:-OmitStackTraceInFastThrow \
-XX:+HeapDumpOnOutOfMemoryError"
#-XX:+PrintGCDetails \

export ES_JAVA_OPTS="-Xms1G -Xmx1G -server -XX:+UseG1GC -XX:+UseNUMA -XX:+UseCompressedOops -XX:+AlwaysPreTouch -XX:SurvivorRatio=8 -XX:+AlwaysPreTouch"
export JAVA_DEBUG_OPTS="-Xdebug -Xrunjdwp:server=y,transport=dt_socket,suspend=n,address="
#export JAVA_OPTS="${DEF_JAVA_OPTS} --illegal-access=deny -XX:HeapDumpPath=${VOLUMES_SD}/logs/jvm_error.hprof"
export JAVA_OPTS="${DEF_JAVA_OPTS} -XX:HeapDumpPath=${VOLUMES_SD}/logs/jvm_error.hprof"
export MAVEN_OPTS="${DEF_JAVA_OPTS} -XX:HeapDumpPath=${VOLUMES_SD}/logs/maven_java_error.hprof"
export ANT_ARGS="-nouserlib -lib ${VOLUMES_SD_REPOS}/ant/lib"
export ANT_OPTS="-Divy_install_path=${VOLUMES_SD_REPOS}/ant/lib -Ddest=${VOLUMES_SD_REPOS}/ant -Divy.default.ivy.user.dir=${VOLUMES_SD_REPOS}/ivy2"
export SBT_OPTS="-Dsbt.global.base=/Volumes/sd/servers/sbt \
-Dsbt.version=1.0.4 \
-Dsbt.boot.directory=${SBT_HOME}/boot \
-Dsbt.ivy.home=${VOLUMES_SD_REPOS}/ivy2 \
-Dsbt.override.build.repos=true \
-Dsbt.repository.config=/Volumes/sd/servers/sbt/repositories"

# export DYLD_LIBRARY_PATH=$(rustc --print sysroot)/lib:$DYLD_LIBRARY_PATH

# ########################################## User Alias Commond #####################################
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias pin='ping -c 4'
alias wgetnc='wget --no-check-certificate'

MVN_MB="-Dmaven.compiler.fork=true -T 6" # MVN_MULTI_THREADED_BUILDER
MVN_A="-Paliyun"
MVN_AS="-Paliyun -Pspring"
MVN_ASA="-Paliyun -Pspring -Pmaven2 -Papache"
MVN_ALL="-Paliyun -Pspring -Pmaven2 -Papache -Psonatype -Pxinwang"
alias mvncpst="mvn clean package -DskipTests ${MVN_A} -U"
alias mvncpstc="mvn clean package -DskipTests ${MVN_A} -U ; mvn clean"
alias mvna="mvn clean package -DskipTests ${MVN_A} -U ; mvn dependency:sources ${MVN_A} -U ; mvn dependency:resolve -Dclassifier=javadoc ${MVN_A} -U ; mvn clean"
alias mvnas="mvn clean package -DskipTests ${MVN_AS} -U ; mvn dependency:sources ${MVN_AS} -U ; mvn dependency:resolve -Dclassifier=javadoc ${MVN_AS} -U ; mvn clean"
alias mvnasa="mvn clean package -DskipTests ${MVN_ASA} -U ; mvn dependency:sources ${MVN_ASA} -U ; mvn dependency:resolve -Dclassifier=javadoc ${MVN_ASA} -U ; mvn clean"
alias mvnall="mvn clean package -DskipTests ${MVN_ALL} -U ; mvn dependency:sources ${MVN_ALL} -U ; mvn dependency:resolve -Dclassifier=javadoc ${MVN_ALL} -U ; mvn clean"

alias mx="mx --user-home=/Volumes/sd/repos/mx"
alias schemescript='scheme --script'
alias clojure='java -jar ${LOCAL_LIB_DIR}/clojure/clojure.jar'

########################################### RustUp ##################################################
alias rnr="rustup run nightly cargo --color always "
alias rsr="rustup run stable cargo --color always "
alias rbr="rustup run beta cargo --color always "
alias rsu="rustup self update"
alias ru="rustup update"

# ############################################ PATH #################################################
PATH=${SPRINGCLI_HOME}/bin:${LOCAL}/bin:${LOCAL}/kits:${FFMPEG_HOME}/bin:${WGET_HOME}/bin:${GETTEXT_HOME}/bin:$PATH
PATH=${LIBRESSL_HOME}/bin:${FISH_HOME}/bin:$PATH
PATH=${AUTOCONF_HOME}/bin:${AUTOMAKE_HOME}/bin:${PKG_CONFIG_HOME}/bin:${CMAKE_HOME}/bin:$PATH
PATH=${CARGO_HOME}/bin:${MX_HOME}:${M2_HOME}/bin:${GRADLE_HOME}/bin:${ANT_HOME}/bin:${BAZEL_HOME}/bin:$PATH
PATH=${BTRACE_HOME}/bin:${HTOP_HOME}/bin:$PATH
PATH=$CBC_HOME/bin:$JAVACC_HOME/bin:${CLANG_HOME}/bin:$GCC_HOME/bin:$NASM:$PATH
PATH=$MYSQL_BASE_DIR/bin:$MYSQL_BASE_DIR/support-files:$REDIS_HOME/bin:$NGINX:${MYSQL_SHELL}/bin:$PATH
PATH=$KOTLIN_HOME/bin:$PATH
PATH=$HASKELL_BIN/bin:$ZK_HOME/bin:$PATH
PATH=$RUBY_HOME/bin:$PY2_HOME/bin:$PY3_HOME/bin:$PATH
PATH=$GOROOT/bin:$GOPATH/bin:$RUST_HOME/bin:$CHEZ_SCHEME_HOME/bin:$NODE_PATH/bin:$NODE_GLOBAL_PATH/bin:$PATH

export PATH

source $ZSH/oh-my-zsh.sh
# source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# OPAM configuration
. /Volumes/sd/repos/opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
