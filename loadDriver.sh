#!/bin/bash
mkdir -p /tmp/audio && mkfifo /tmp/audio/out.audio
sudo insmod ./build/snd_fifo.ko output_fifo_filename=/tmp/audio/audio.pcm
