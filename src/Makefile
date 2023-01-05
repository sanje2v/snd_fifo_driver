obj-m := snd_fifo.o
KVERSION = $(shell uname -r)
BUILD_DIR = $(realpath ../build)
KEYS_DIR = $(realpath ../keys)

all:
	mkdir -p $(BUILD_DIR)
	touch $(BUILD_DIR)/Makefile
	make -C /lib/modules/$(KVERSION)/build M=$(BUILD_DIR) src=$(PWD) modules
	kmodsign sha512 $(KEYS_DIR)/MOK.priv $(KEYS_DIR)/MOK.der $(BUILD_DIR)/snd_fifo.ko

clean:
	make -C /lib/modules/$(KVERSION)/build M=$(BUILD_DIR) src=$(PWD) clean
	-rm $(BUILD_DIR)/Makefile
