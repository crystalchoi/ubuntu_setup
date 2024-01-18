# sudo apt install -y libjpeg-dev libtiff5-dev libpng-dev libjasper-dev
#  sudo apt-get install openexr
#  sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxvidcore-dev libx264-dev libxine2-dev libv4l-dev v4l-utils libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
# sudo apt-get install qtcreator
# sudo apt-get -y install qt5-default 
# sudo apt-get install openexr
# sudo apt-get install libglx-dev  # for OpenGL ON
# sudo apt install libgtk3.0-cil-dev

cmake \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D BUILD_WITH_DEBUG_INFO=OFF \
    -D BUILD_EXAMPLES=ON \
    -D BUILD_SAMPLES=ON \
    -D BUILD_opencv_python3=ON \
    -D BUILD_opencv_world=OFF \
    -D BUILD_SHARED_LIBS=ON \
    -D BUILD_NEW_PYTHON_SUPPORT=ON \
    -D BUILD_JAVA=ON \
    -D INSTALL_C_EXAMPLES=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D OPENCV_FORCE_3RDPARTY_BUILD=ON \
    -D OPENCV_SKIP_PYTHON_LOADER=ON \
    -D PYTHON3_PACKAGES_PATH=/usr/lib/python3/dist-packages \
    -D PYTHON_DEFAULT_EXECUTABLE=/usr/bin/python3 \
	-D WITH_V4L=ON  \
	-D WITH_GTK=ON \
	-D WITH_QT=ON \
	-D WITH_V4L=ON  \
	-D WITH_FFMPEG=ON \
	-D WITH_XINE=ON \
	-D WITH_TBB=OFF \
	-D WITH_IPP=OFF \
	-D WITH_1394=OFF \
    -D HIGHGUI_PLUGIN_LIST=all \
    -D VTK_DIR=/home/crystal/dev/tools/VTK/build \
    -D OPENCV_EXTRA_MODULES_PATH=../src_contrib/modules \
    ../src/

	#-DCMAKE_CXX_FLAGS="--param ggc-min-expand=20" \
	#-D WITH_XINE=ON \
	#-D WITH_GTK_2_X=ON \
    	#-D WITH_TBB=ON \
	#-D WITH_OPENGL=ON \


# $ echo '/usr/local/lib' | sudo tee --append /etc/ld.so.conf.d/opencv.conf
# $ sudo ldconfig
# $ echo 'PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig' | sudo tee --append ~/.bashrc
# $ echo 'export PKG_CONFIG_PATH' | sudo tee --append ~/.bashrc
# $ source ~/.bashrc



# wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.0.zip 
# wget -O opencv_contrib.zip https://github.com/opencv/opencv-contrib/archive/4.5.0.zip 
#cmake \
#	-D CMAKE_BUILD_TYPE=RELEASE \
#	-D CMAKE_INSTALL_PREFIX=/usr/local \
#       	-D BUILD_WITH_DEBUG_INFO=OFF \
#	-D BUILD_DOCS=OFF \
#	-D BUILD_EXAMPLES=OFF \
#	-D BUILD_PACKAGE=OFF \
#	-D BUILD_TESTS=OFF \
#	-D BUILD_PERF_TESTS=OFF \
#	-D BUILD_opencv_python3=ON \
#	-D BUILD_NEW_PYTHON_SUPPORT=ON \
#	-D INSTALL_C_EXAMPLES=ON \
#	-D INSTALL_PYTHON_EXAMPLES=ON \
#	-D WITH_QT=OFF \
#	-D WITH_GTK=ON \
#	-D WITH_OPENGL=ON \
#	-D WITH_V4L=ON  \
#	-D WITH_FFMPEG=ON \
#	-D WITH_XINE=ON \
#	-D WITH_TBB=OFF \
#	-D WITH_IPP=OFF \
#	-D WITH_1394=OFF \
#	-D OPENCV_ENABLE_NONFREE=ON \
#	-D OPENCV_SKIP_PYTHON_LOADER=ON \
#	-D OPENCV_GENERATE_PKGCONFIG=ON \
#	-D OPENCV_EXTRA_MODULES_PATH=../src_contrib/modules \
#	../src/


