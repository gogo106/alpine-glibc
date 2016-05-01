# Download
```sh
wget "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk" \
     "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-bin-2.21-r2.apk"
```

# description
Here we use several hacks collected from [https://github.com/gliderlabs/docker-alpine/issues/11](https://github.com/gliderlabs/docker-alpine/issues/11):

    1. install GLibc (which is not the cleanest solution at all)
    2. hotfix /etc/nsswitch.conf, which is apperently required by glibc and is not used in Alpine Linux
