# syntax=docker/dockerfile:1
FROM ubuntu:22.04
# install app dependencies
RUN apt-get update && apt-get install -y build-essential meson ninja-build python3-pip python3-setuptools libgtk-3-dev valac vim sudo dconf-editor dbus-x11
WORKDIR /Vala
# install app
COPY . .
#CMD meson --version
#sudo apt install gtk-3-examples
#gtk3-widget-factory to start it

