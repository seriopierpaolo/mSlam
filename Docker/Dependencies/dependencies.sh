apt-get install make
apt-get install sudo

#sudo apt-get update
#sudo apt-get install cmake pkg-config -y
#sudo apt-get install mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev -y
#sudo apt-get install libglew-dev libglfw3-dev libglm-dev -y 
#sudo apt-get install libao-dev libmpg123-dev -y


# Get Pangolin
git clone --recursive https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin

# Install dependencies (as described above, or your preferred method)
yes | ./scripts/install_prerequisites.sh recommended

# Configure and build
cmake -B build
cmake --build build

# GIVEME THE PYTHON STUFF!!!! (Check the output to verify selected python version)
cmake --build build -t pypangolin_pip_install

cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=../install/ ../Pangolin/
make -j4
sudo make install

#----------------------------------------------------------------------------------------
#OPENCV INSTALLER
apt install -y libopencv-dev

#----------------------------------------------------------------------------------------
#EIGEN3 INSTALLER
sudo apt install libeigen3-dev
#----------------------------------------------------------------------------------------


