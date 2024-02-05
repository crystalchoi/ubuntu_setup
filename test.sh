
# Below nvidia-* and libnvidia-* removes drivers also. Better to remove everything and reinstall. The libcudnn8* removed cuDNN.
sudo apt-get --purge remove cuda-* nvidia-* gds-tools-* libcublas-* libcufft-* libcufile-* libcurand-* libcusolver-* libcusparse-* libnpp-* libnvidia-* libnvjitlink-* libnvjpeg-* nsight* nvidia-* libnvidia-* libcudnn8*

# Also run below which gets rid of CUDA 10 and prior stuff.
sudo apt-get --purge remove "*cublas*" "*cufft*" "*curand*" "*cusolver*" "*cusparse*" "*npp*" "*nvjpeg*" "cuda*" "nsight*"

# Cleanup uninstall
sudo apt-get autoremove
sudo apt-get autoclean

# remove cuda directories
sudo rm -rf /usr/local/cuda*

# remove from dpkg
sudo dpkg -r cuda
sudo dpkg -r $(dpkg -l | grep '^ii  cudnn' | awk '{print $2}')
