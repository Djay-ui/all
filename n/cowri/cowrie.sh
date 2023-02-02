sudo apt update 


sudo /etc/ssh/sshd_config 
			
				#Port 5555
sudo systemctl restart sshd



sudo apt install git \
python-virtualenv \
libssl-dev \
libffi-dev \
build-essential \
libpython3-dev \
python3-minimal \
authbind \
virtualenv 

sudo adduser --disabled-password cowrie 

sudo touch /etc/authbind/byport/22

sudo chown cowrie:cowrie /etc/authbind/byport/22

 sudo chmod 777 /etc/authbind/byport/22

sudo su - cowrie

 git clone https://github.com/cowrie/cowrie.git
 
 cd cowrie/
 
virtualenv  --python=python3 cowrie-env

source cowrie-env/bin/activate	

pip install --upgrade pip

pip install --upgrade -r  requirements.txt

cd etc/

 cp cowrie.cfg.dist cowrie.cfg

nano cowrie.cfg

			#585 listen_endpoints = tcp:22:interface=0.0.0.0


 nano userdb.txt
 
		root:x:!12345
		root:x:*
		
cd ..

bin/cowrie start


#duplicate putty

sudo su  - cowrie
 
tail -f cowrie/var/log/cowrie/cowrie.log


in kali 
	
	ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeychecking=no root@192.168.80.134






