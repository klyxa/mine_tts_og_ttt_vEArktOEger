et!/bin/bash

# Set the sample rate and output file name
SAMPLE_RATE=16000   # Change this to the desired sample rate
OUTPUT_FILE="recording.wav"   # Change this to the desired output file name

# Function to stop recording audio
stop_recording() {
  echo "Recording stopped. Audio saved to '$OUTPUT_FILE'."
  kill $PID
}

# Start recording audio
echo "Recording started. Press Ctrl+G to stop recording..."
arecord -f cd -r $SAMPLE_RATE > $OUTPUT_FILE #&
#PID=$!
#
## Loop to detect Ctrl+G key press
#while true; do
#  # Check if the Ctrl+G key combination is pressed
#  if read -rsn2 -t 0.1 -N 1 key && [[ $key == $'\x07' ]]; then
#    # Ctrl+G key combination is pressed, stop recording and exit
#    stop_recording
#    exit 0
#  fi
#done

