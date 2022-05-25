import os
import subprocess

play = lambda: subprocess.call(['osascript', '-e', 'tell application "Music" to play'])
pause = lambda: subprocess.call(['osascript', '-e', 'tell application "Music" to pause'])
audio_playing = lambda: os.system("""if [[ "$(pmset -g | grep ' sleep')" == *"coreaudiod"* ]]; then echo true; else echo false; fi""")

# TODO: add a check to see if the audio is playing or not