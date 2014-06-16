#!/bin/sh

set -e

# cleanup directories
cleanup() {
  if [ -d build/ ]
  then
    echo "cleanup build directory..."
    rm -rf build/*
  fi

  if [ -d dist/ ]
  then
    echo "cleanup distribution directory..."
    rm -rf dist/*
  fi
}

# show usage
usage() {
  echo "usage: build.sh [-clean|-verbose|-help]"
  echo "  -clean   - cleanup build and distribution directories"
  echo "  -verbose - verbose output during build"
  echo "  -help    - this short help"
}

# main
cd ${0%/*}
PROJECT_HOME=`pwd`
QUIET_ZIP=-q

# handle passed options
case "$1" in 
  -clean)  cleanup
           exit 0
           ;;
  -verbose)  QUIET_ZIP=
           ;;
  -help)  usage
           exit 0
           ;;
esac

cleanup

# create directories
if [ ! -d build/ ]
then
  echo "create build directory..."
  mkdir build/
fi

if [ ! -d dist/ ]
then
  echo "create distribution directory..."
  mkdir dist/
fi

# build
cd ${PROJECT_HOME}/src/security

echo "build..."
mkdir ${PROJECT_HOME}/build/RaspberryPI_EmulatorDevice/
zip ${QUIET_ZIP} -r ${PROJECT_HOME}/build/RaspberryPI_EmulatorDevice/RaspberryPI_EmulatorDevice.security.configuration *
cp ${PROJECT_HOME}/src/device.properties ${PROJECT_HOME}/build/RaspberryPI_EmulatorDevice/
cp ${PROJECT_HOME}/src/skin.definition ${PROJECT_HOME}/build/RaspberryPI_EmulatorDevice/

echo "create distribution ZIP..."
cd ${PROJECT_HOME}/build/
zip ${QUIET_ZIP} -r ${PROJECT_HOME}/dist/RaspberryPI_EmulatorDevice.zip *
