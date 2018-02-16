echo "insmod sircle_uart.ko"
sudo insmod sircle_uart.ko
echo "usermod -aG dialout pi"
sudo usermod -aG dialout pi 

