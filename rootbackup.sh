cd /;
sudo tar cvpzf backup.tar.gz \
--exclude=/proc/* \
--exclude=/lost+found/* \
--exclude=/media/* \
--exclude=/mnt/* \
--exclude=/sys/* \
--exclude=/dev/* \
--exclude=/swapfile \
/
