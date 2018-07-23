# /usr/local/opt/boost@1.55/include
# CPPFLAGS =  -DHAVE_BUILD_INFO -D__STDC_FORMAT_MACROS -I/usr/local/opt/berkeley-db@4/include -DMAC_OSX -mmacosx-version-min=10.7 -arch x86_64 -isysroot /Developer/SDKs/MacOSX10.7.sdk
#./configure --with-boost-libdir=/usr/local/opt/boost@1.55/lib --without-gui --disable-tests --disable-gui-tests

./configure --with-boost=/usr/local/opt/boost@1.55/include --with-boost-libdir=/usr/local/opt/boost@1.55/lib --without-miniupnpc CFLAGS="-mmacosx-version-min=10.11 -arch x86_64 -isysroot /Developer/SDKs/MacOSX10.11.sdk"

# cp /usr/local/opt/boost@1.55/lib/libboost_thread-mt.dylib ./ZCore-Qt.app/Contents/Frameworks/
# cp /usr/local/opt/boost@1.55/lib/libboost_system-mt.dylib ./ZCore-Qt.app/Contents/Frameworks/
# create-dmg ZCore-Qt.app

# after make recompile with make deploy