sudo apt-get update
sudo apt-get upgrade

sudo apt-get -y install libopencv-dev build-essential cmake libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libv4l-dev libtbb-dev libqt4-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils 


sudo apt-get install libjpeg-dev libtiff5-dev libpng-dev
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libdc1394-22 libxvidcore-dev libx264-dev libxine2-dev libv4l-dev v4l-utils libgtk-3-dev libatlas-base-dev libeigen3-dev gfortran python3-dev python3-numpy python3-matplotlib libtbb2 libtbb-dev 


# by crystal 
sudo apt -y install libgtkglext1
sudo apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev

sudo snap install openjdk

 sudo apt-get install vim 


memory swap 
free -m 
sudo swapoff -a // swap process 모두 종료


sudo dd if=/dev/zero of=/swapfile bs=1G count=8 // 크기 변경
/* 위 명령어 에러가 날 시**
sudo dd if=/dev/zero of=/swapfile bs=1M count=2000


sudo mkswap /swapfile // 파일을 swapfile로 만들어주기


sudo swapon /swapfile // 해당 swapfile 활성화






https://velog.io/@m2nja201/cmake-%EC%98%A4%EB%A5%98-Ubuntu%EC%97%90%EC%84%9C-MySQL-%EC%84%A4%EC%B9%98-%EC%A4%91-cmake-%EC%98%A4%EB%A5%98-c-internal-compiler-error-killed-program-cc1plus
