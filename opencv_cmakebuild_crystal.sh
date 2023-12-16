cmake \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D BUILD_WITH_DEBUG_INFO=OFF \
    -D BUILD_EXAMPLES=ON \
    -D BUILD_opencv_python3=ON \
    -D BUILD_opencv_world=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D WITH_TBB=ON \
    -D VTK_DIR=/home/crystal/dev/tools/vtk/VTK-8.2.0/build \
	-DCMAKE_CXX_FLAGS="--param ggc-min-expand=20" \
    ../src/

    #-D OPENCV_EXTRA_MODULES_PATH=../src_contrib/modules \
