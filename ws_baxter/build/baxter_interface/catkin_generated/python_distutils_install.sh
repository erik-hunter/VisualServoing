#!/bin/sh -x

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

cd "/home/visual-servoing/ros/ws_baxter/src/baxter_interface"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/home/visual-servoing/ros/ws_baxter/install/lib/python2.7/dist-packages:/home/visual-servoing/ros/ws_baxter/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/visual-servoing/ros/ws_baxter/build" \
    "/usr/bin/python" \
    "/home/visual-servoing/ros/ws_baxter/src/baxter_interface/setup.py" \
    build --build-base "/home/visual-servoing/ros/ws_baxter/build/baxter_interface" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/visual-servoing/ros/ws_baxter/install" --install-scripts="/home/visual-servoing/ros/ws_baxter/install/bin"
