obj-m += birthday.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

install:
	echo "birthday" > /etc/modules-load.d/birthday.conf
	cp birthday.conf /lib/modprobe.d/
	cp birthday.ko /lib/modules/$(shell uname -r)/

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
