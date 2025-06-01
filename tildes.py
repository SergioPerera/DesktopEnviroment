
from pynput import keyboard
from pynput.keyboard import Controller, Key
import time
import subprocess

# Mapeo de combinaciones a caracteres acentuados
accent_map = {
    "'a": "á", "'A": "Á",
    "'e": "é", "'E": "É",
    "'i": "í", "'I": "Í",
    "'o": "ó", "'O": "Ó",
    "'u": "ú", "'U": "Ú",
    "'n": "ñ", "'N": "Ñ",
    ":u": "ü", ":U": "Ü"
}

kb = Controller()
buffer = []
shift_pressed = False

# Verifica si Caps Lock está activado en Linux
def is_capslock_on():
    try:
        output = subprocess.check_output(['xset', 'q']).decode()
        for line in output.splitlines():
            if 'Caps Lock:' in line:
                return 'on' in line
    except Exception as e:
        print("Error checking Caps Lock:", e)
    return False

def process_buffer():
    combo = ''.join(buffer)
    if combo in accent_map:
        for _ in range(2):
            kb.press(Key.backspace)
            kb.release(Key.backspace)
            time.sleep(0.01)
        kb.type(accent_map[combo])
        buffer.clear()

def on_press(key):
    global buffer, shift_pressed

    if key == Key.shift or key == Key.shift_r or key == Key.shift_l:
        shift_pressed = True
        return

    try:
        char = key.char
    except AttributeError:
        return

    # Considera estado de mayúsculas
    if char.isalpha():
        capslock = is_capslock_on()
        if capslock ^ shift_pressed:
            char = char.upper()
        else:
            char = char.lower()

    buffer.append(char)
    if len(buffer) > 2:
        buffer.pop(0)

    process_buffer()

def on_release(key):
    global shift_pressed
    if key == Key.shift or key == Key.shift_r or key == Key.shift_l:
        shift_pressed = False

def main():
    with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
        listener.join()

if __name__ == "__main__":
    main()
