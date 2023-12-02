cmake \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D BUILD_WITH_DEBUG_INFO=OFF \
    -D BUILD_EXAMPLES=ON \
    -D BUILD_opencv_python3=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D WITH_TBB=ON \
	-DCMAKE_CXX_FLAGS="--param ggc-min-expand=20" \
    -D OPENCV_EXTRA_MODULES_PATH=../src_contrib/modules \
    ../src/

