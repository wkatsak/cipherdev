obj-m := cipherdev.o
cipherdev-objs := cipherdev_main.o


KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD       := $(shell pwd)

default: build

build:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions Module.* modules.*
