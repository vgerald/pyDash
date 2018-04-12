# sudo yum git
# git clone https://github.com/vgerald/pyDash.git

#yum install python35 python35-virtualenv python35-pip
#pip install --user pipenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
mkdir testDash
cd testDash/
virtualenv testDash
virtualenv -p /usr/bin/python3 testDash
##To begin using the virtual environment, it needs to be activated:
source testDash/bin/activate
activate
pip install -r requirements.txt
#rmvirtualenv venv
#git remote add origin https://github.com/vgerald/pyDash.git
#git push -u origin master
