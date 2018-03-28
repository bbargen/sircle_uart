obj-m += sircle_uart.o

sircle_uart-objs := module.o raspberry_soft_uart.o queue.o

RELEASE = $(shell uname -r)
LINUX = ../linux2

all:
	$(MAKE) -C $(LINUX) M=$(PWD) modules

clean:
	$(MAKE) -C $(LINUX) M=$(PWD) clean

install:
	sudo install -m 644 -c sircle_uart.ko /lib/modules/$(RELEASE)
	sudo depmod

