obj-m += sircle_uart.o

sircle_uart-objs := module.o raspberry_soft_uart.o queue.o

RELEASE = $(shell uname -r)
LINUX = /root/raspberry/linux

all:
	$(MAKE) -C $(LINUX) M=$(PWD) modules

clean:
	$(MAKE) -C $(LINUX) M=$(PWD) clean

install:
	install -m 644 -c sircle_uart.ko /lib/modules/$(RELEASE)
	depmod

