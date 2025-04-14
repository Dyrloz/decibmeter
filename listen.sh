#!/bin/bash

# Set the audio device (you might need to adjust this)
AUDIO_DEVICE="default"

# Set the duration for capturing audio (in seconds)
DURATION=1

# Function to calculate the decibel level
calculate_decibel_level() {
    # Capture audio and calculate the RMS (Root Mean Square) amplitude
    local rms_amplitude=$(sox -t alsa $AUDIO_DEVICE -n stat 2>&1 | grep "RMS amplitude" | awk '{print $3}')

    # Convert RMS amplitude to decibels
    local decibel_level=$(echo "20 * l($rms_amplitude) / l(10)" | bc -l)

    # Print the decibel level
    echo "Decibel Level: $decibel_level dB"
}

# Main loop to continuously display the decibel level
while true; do
    calculate_decibel_level
    sleep $DURATION
done
