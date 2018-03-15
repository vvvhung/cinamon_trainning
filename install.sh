# run install_python2_virtualenv.sh first
cd .
cp ./requirements.txt ~/requirements.txt
cp ./cv2.so ~/cv2.so
cd ~
virtualenv -p python venv
source ~/venv/bin/activate && pip install -r requirements.txt && deactivate
# add link to opencv
cp cv2.so /usr/local/lib/python2.7/site-packages/cv2.so
ldconfig
ln -s /usr/local/lib/python2.7/site-packages/cv2.so ~/venv/lib/python2.7/site-packages/cv2.so
ln /dev/null /dev/raw1394
