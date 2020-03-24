#!/usr/bin/env sh

# Load pulse audio
pulseaudio -D --exit-idle-time=-1
# Create a virtual speaker output
pactl load-module module-null-sink sink_name=SpeakerOutput sink_properties=device.description="Dummy_Output"
# Create a virtual microphone
pacmd load-module module-virtual-source source_name=VirtualMicrophone

./atanua