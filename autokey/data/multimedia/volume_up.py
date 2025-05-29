import subprocess
subprocess.call(["pactl", "set-sink-volume", "@DEFAULT_SINK@", "+5%"])
