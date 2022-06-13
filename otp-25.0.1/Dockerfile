FROM cimg/base:2022.01

LABEL mainainer="Paweł Chrząszcz <pawel.chrzaszcz@erlang-solutions.com>"

RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    libncurses5-dev \
    unixodbc-dev

ENV ERLANG_VERSION="25.0.1"
RUN ERLANG_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-25.0.1/otp_src_25.0.1.tar.gz" && \
    cd && \
    mkdir erlang-src && \
    cd erlang-src && \
    curl -fSL -o erlang.tar.gz $ERLANG_DOWNLOAD_URL && \
    tar -xz --strip-components=1 -f erlang.tar.gz && \
    ./configure && \
    make && \
    sudo make install && \
    cd && \
    rm -rf erlang-src
