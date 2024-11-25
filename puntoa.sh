sudo su

sudo fdisk /dev/sdc

sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1

sudo fdisk /dev/sdc
sudo fdisk /dev/sdc

sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6

sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgcreate cgDevelopers /dev/sdc5 /dev/sdc6
vgrename cgDevelopers vgDevelopers

sudo lvcreate -L 2G vgAdmin -n lvAdmin
sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L 800M vgDevelopers -n lvDevops

sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops

sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops

sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
