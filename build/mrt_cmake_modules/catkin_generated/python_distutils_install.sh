#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/kal1-4/anicar_ws/src/mrt_cmake_modules"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kal1-4/anicar_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kal1-4/anicar_ws/install/lib/python2.7/dist-packages:/home/kal1-4/anicar_ws/build/mrt_cmake_modules/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kal1-4/anicar_ws/build/mrt_cmake_modules" \
    "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python" \
    "/home/kal1-4/anicar_ws/src/mrt_cmake_modules/setup.py" \
    build --build-base "/home/kal1-4/anicar_ws/build/mrt_cmake_modules" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/kal1-4/anicar_ws/install" --install-scripts="/home/kal1-4/anicar_ws/install/bin"
