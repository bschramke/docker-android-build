# Android Build on Docker Container

Docker repository for android build environment

### Installed Android SDK Packages
| Path                              | Version | Description                    | Location                          |
| :---                              | :---    | :---                           | :---                              |
| build-tools;26.0.0                | 26.0.0  | Android SDK Build-Tools 26     | build-tools/26.0.0/               |
| build-tools;26.0.1                | 26.0.1  | Android SDK Build-Tools 26.0.1 | build-tools/26.0.1/               |
| extras;android;m2repository       | 47.0.0  | Android Support Repository     | extras/android/m2repository/      |
| extras;google;g...e_play_services | 44      | Google Play services           | extras/google/g..._play_services/ |
| extras;google;instantapps         | 1.0.0   | Instant Apps Development SDK   | extras/google/instantapps/        |
| extras;google;m2repository        | 58      | Google Repository              | extras/google/m2repository/       |
| patcher;v4                        | 1       | SDK Patch Applier v4           | patcher/v4/                       |
| platform-tools                    | 26.0.0  | Android SDK Platform-Tools     | platform-tools/                   |
| platforms;android-26              | 2       | Android SDK Platform 26        | platforms/android-26/             |
| tools                             | 26.0.2  | Android SDK Tools              | tools/                            |

### Linux
#### To build the container image:
    ```bash
    make build
    ```
    
##### Android Build :
    ```bash
    cd /path/to/your/android/source/root
    docker run -it --rm -v $(pwd):/opt/workspace --name android-build bschramke/android-build:api26 <GRADLE TASKS> <GRADLE ARGS>

