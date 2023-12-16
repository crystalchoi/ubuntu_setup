#---------------------------------------
#    vtk for ubuntu 20.04 + OpenCV 4.8.0??
#---------------------------------------
# sudo apt install cmake libavcodec-dev libavformat-dev libavutil-dev libboost-dev libdouble-conversion-dev libeigen3-dev libexpat1-dev libfontconfig-dev libfreetype6-dev libgdal-dev libglew-dev libhdf5-dev libjpeg-dev libjsoncpp-dev liblz4-dev liblzma-dev libnetcdf-dev libnetcdf-cxx-legacy-dev libogg-dev libpng-dev libpython3-dev libqt5opengl5-dev libqt5x11extras5-dev libsqlite3-dev libswscale-dev libtheora-dev libtiff-dev libxml2-dev libxt-dev qtbase5-dev qttools5-dev zlib1g-dev
# git clone https://gitlab.kitware.com:vtk/VTK.git
# cd VTK
# mkdir build
# cd build 
#---------------------------------------
sudo apt-get install python3-vtk7  # 이걸로 한방에??

cmake \
	-DCMAKE_INSTALL_PREFIX=$HOME/vtk-inst \
    -DCMAKE_INSTALL_RPATH=$HOME/vtk-inst \
    -DVTK_Group_Qt=ON \
    -DVTK_QT_VERSION=5 \
    -DVTK_Group_Imaging=ON \
    -DVTK_Group_Views=ON \
    -DModule_vtkRenderingFreeTypeFontConfig=ON \
    -DVTK_WRAP_PYTHON=ON \
    -DVTK_PYTHON_VERSION=3 \
    -DVTK_PYTHON_OPTIONAL_LINK=ON \
    -DPYTHON_EXECUTABLE=/usr/bin/python3 \
    -DPYTHON_INCLUDE_DIR=/usr/include/python3.8 \
    -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.8.so \
    -DBUILD_TESTING=OFF \
    -DBUILD_SHARED_LIBS=ON \
    -DVTK_USE_SYSTEM_LIBRARIES=ON \
    -DVTK_USE_SYSTEM_LIBPROJ4=ON \
    -DVTK_USE_SYSTEM_GL2PS=OFF \
    -DVTK_USE_SYSTEM_LIBHARU=OFF \
    -DVTK_USE_SYSTEM_PUGIXML=OFF \
    -DCMAKE_BUILD_TYPE=Release \
    ..

    #-DCMAKE_INSTALL_PREFIX=/usr/local \ 
    #-DVTK_USE_SYSTEM_LIBPROJ4=OFF \

make -j$(($(nproc) - 1))
make install

