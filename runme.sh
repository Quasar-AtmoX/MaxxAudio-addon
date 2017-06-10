#!/sbin/sh
#
# www.osbusters.net
#
# A Quasar AtmoX™ add-on
#
# This will modify audio-effects.conf for MaxxAudio effect.
# Hope you will enjoy it.
#
# AUTHOR: nitesh9 (Nitesh Prasad)

# Normal/vendor config locations
CONFIG_FILE=/system/etc/audio_effects.conf
VENDOR_CONFIG=/system/vendor/etc/audio_effects.conf

# Add libary
sed -i 's/^libraries {/libraries {\n  maxxaudio3 {\n    path \/system\/lib\/soundfx\/libmaxxeffect-cembedded.so\n  }/g' $CONFIG_FILE

# Add effect
sed -i 's/^effects {/effects {\n  maxxaudio3 {\n    library maxxaudio3\n    uuid ae12da60-99ac-11df-b456-0002a5d5c51b\n  }/g' $CONFIG_FILE

# Add libary
sed -i 's/^libraries {/libraries {\n  maxxaudio3 {\n    path \/system\/lib\/soundfx\/libmaxxeffect-cembedded.so\n  }/g' $VENDOR_CONFIG

# Add effect
sed -i 's/^effects {/effects {\n  maxxaudio3 {\n    library maxxaudio3\n    uuid ae12da60-99ac-11df-b456-0002a5d5c51b\n  }/g' $VENDOR_CONFIG
