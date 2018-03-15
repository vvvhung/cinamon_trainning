# run install first
apt-get update
apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev libatlas-base-dev gfortran libgtk-3-dev unzip libleptonica-dev libtesseract-dev python-tk tesseract-ocr tesseract-ocr-eng tesseract-ocr-osd tesseract-ocr-equ tesseract-ocr-jpn libhdf5-dev
wget -O opencv-3.3.0.zip https://github.com/opencv/opencv/archive/3.3.0.zip
wget -O opencv-3.3.0-contrib.zip https://github.com/opencv/opencv_contrib/archive/3.3.0.zip
cp opencv-3.3.0.zip ~/opencv-3.3.0.zip
cp opencv-3.3.0-contrib.zip ~/opencv-3.3.0-contrib.zip
cd ~
unzip ~/opencv-3.3.0.zip
unzip ~/opencv-3.3.0-contrib.zip
cd opencv-3.3.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE   -D PYTHON_INCLUDE_DIR=/usr/include/python2.7  -D CMAKE_INSTALL_PREFIX=/usr/local     -D INSTALL_PYTHON_EXAMPLES=ON     -D INSTALL_C_EXAMPLES=OFF     -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.3.0/modules     -D PYTHON_EXECUTABLE=/usr/bin/python  -D BUILD_EXAMPLES=ON ..
make -j4
make install
# add link to opencv
cp ./lib/cv2.so /usr/local/lib/python2.7/site-packages/cv2.so
ldconfig
ln -s /usr/local/lib/python2.7/site-packages/cv2.so ~/venv/lib/python2.7/site-packages/cv2.so
ln /dev/null /dev/raw1394