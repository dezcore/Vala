# syntax=docker/dockerfile:1
FROM ubuntu:22.04
# install app dependencies
RUN apt-get update && apt-get install -y build-essential meson ninja-build python3-pip python3-setuptools libgtk-3-dev valac vim sudo dconf-editor dbus-x11
WORKDIR /Vala
# install app
COPY . .
#CMD meson --version
#docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=host.docker.internal:0 vala
#meson setup builddir
#cd builddir
#ninja
#./demo
#meson compile
#other : meson build --prefix=/user
#cd build
#ninja
#gsettings  list-schemas
#glib-compile-schemas /usr/share/glib-2.0/schemas/
#dbus-x11
