!#/bin/bash

mkdir /opt/cmangos/build/
cd /opt/cmangos/build/

abort() {
  echo "Encoundered Error: $1"
  exit 1
}

cmake .. -DCMAKE_INSTALL_PREFIX=~/mangos-classic/run -DBUILD_EXTRACTORS=ON -DPCH=1 -DDEBUG=0 -DBUILD_PLAYERBOTS=ON -DBUILD_AHBOT=ON || abort "cmake failed"
make                                                                                                                                || abort "make failed"
make install                                                                                                                        || abort "make install failed"
