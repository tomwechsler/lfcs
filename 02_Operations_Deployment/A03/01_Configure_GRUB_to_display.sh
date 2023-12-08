#Display the boot menu
sudo cat /etc/default/grub

#Create a custom file
sudo vim /etc/default/grub.d/99-custom.cfg

#GRUB_TIMEOUT_STYLE=hidden (replace with menu)
#GRUB_TIMEOUT=0 (replace with 10)

#Generate a GRUB configuration file using the system's current state
sudo grub-mkconfig

#Generate a GRUB configuration file and output it to '/boot/grub/grub.cfg'
sudo grub-mkconfig -o /boot/grub/grub.cfg

#Update the GRUB bootloader configuration
sudo update-grub

#Watch in virtualbox
sudo reboot