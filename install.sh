# run install_python2_virtualenv.sh first
cd .
cp ./requirements.txt ~/requirements.txt
cp ./cv2.so ~/cv2.so
cd ~
virtualenv -p python venv
source ~/venv/bin/activate && pip install -r requirements.txt && deactivate

