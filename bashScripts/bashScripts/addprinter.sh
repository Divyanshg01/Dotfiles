sudo systemctl restart cups.service
/usr/bin/lpadmin -p LBP2900 -m CNCUPSLBP2900CAPTK.ppd -v ccp://localhost:59687 -E
/usr/bin/ccpdadmin -p LBP2900 -o /dev/usb/lp0
sudo ccpdadmin -p LBP2900 -o /dev/usb/lp0
sudo systemctl start ccpd.service
/usr/bin/captstatusui -P LBP2900
sudo systemctl enable ccpd.service
sudo systemctl start ccpd.service
sudo systemctl status ccpd.service
