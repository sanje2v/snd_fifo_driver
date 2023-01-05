#ifndef SETTINGS_H
#define SETTINGS_H

#include <sound/pcm.h>


#define DRIVER_NAME     			"snd_fifo"
#define PCM_NAME					DRIVER_NAME " PCM"
#define DEFAULT_PCM_FORMAT			SNDRV_PCM_FMTBIT_S16_LE
#define DEFAULT_PCM_FREQ			44100
#define DEFAULT_PCM_RATE            SNDRV_PCM_RATE_44100
#define DEFAULT_PCM_CHANNELS		2

#endif