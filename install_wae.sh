cd /home/wae/software
sudo chmod +x wae-linux-v7.4.0.signed.bin
./wae-linux-v7.4.0.signed.bin
sudo chmod +x wae-linux-v7.4.0.bin
./wae-linux-v7.4.0.bin /home/wae
cd /home/wae
source waerc
wae-setup --dest /home/wae/wae-run
sudo ln -sf /home/wae/wae-run/wae.ini /etc/supervisord.d/
sudo supervisorctl update
sudo supervisorctl start wae:*
sudo supervisorctl status wae:*
