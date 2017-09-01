# Android Build on Docker Container

Docker repository for android build environment

### Linux
#### To build the container image:
    $ docker build -t bschramke/android-build .
    
##### Android Build :

    $ cd /path/to/your/android/source/root
    $ docker run -it --rm -v $PWD:/opt/workspace bschramke/android-build <GRADLE TASKS> <GRADLE ARGS>

