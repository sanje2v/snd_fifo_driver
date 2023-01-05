#!/bin/bash
mkdir -p /tmp/audio && mkfifo /tmp/audio/audio.pcm
sudo insmod ./build/snd_fifo.ko output_fifo_filename=/tmp/audio/audio.pcm
