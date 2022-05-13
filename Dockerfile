FROM alpine

RUN apk update && \
        apk upgrade && \
        apk add --no-cache \
            #clang \
            #clang-dev \
            cmake=3.21.3-r0 \
            #curl-dev \
            make \
            g++ \
            gcc \
            git
            #libc-de

            #libxml2-dev \
            #linux-headers

RUN cmake --version

RUN git clone https://github.com/ERGO-Code/HiGHS.git

RUN mkdir HiGHS/build && \
        cd HiGHS/build && \
        cmake .. && \
        cmake --build . && \
        ctest