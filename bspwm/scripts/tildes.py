import keyboard
import subprocess
import threading

accent_map = {
    'a': 'á', 'e': 'é', 'i': 'í', 'o': 'ó', 'u': 'ú',
    'A': 'Á', 'E': 'É', 'I': 'Í', 'O': 'Ó', 'U': 'Ú',
    'n': 'ñ', 'N': 'Ñ',
}

listening = False
timer = None
lock = threading.Lock()

def write_text(text):
    subprocess.run(['xdotool', 'type', '--delay', '0', text])

def backspace():
    subprocess.run(['xdotool', 'key', 'BackSpace'])

def timeout_no_next_char():
    global listening, timer
    with lock:
        listening = False
        timer = None
        # No next char pressed, so leave the ' as is

def on_press(event):
    global listening, timer
    with lock:
        if listening:
            # Cancel timer porque ya llegó siguiente tecla
            if timer:
                timer.cancel()
                timer = None

            listening = False
            char = event.name

            if len(char) == 1:
                if char == "'":
                    # Si la siguiente es ', dejamos el ' original y escribimos otra '
                    # Como ya pusimos el primero, solo escribimos el segundo
                    write_text("'")
                elif char in accent_map:
                    # Borra el ' escrito y escribe la vocal con tilde o ñ
                    backspace()
                    write_text(accent_map[char])
                else:
                    # No es vocal ni n, dejamos ' y escribimos char normal
                    write_text(char)
            else:
                # Para teclas especiales, dejamos ' y escribimos tecla normal
                write_text(char)

            return False  # Bloquear esta tecla original porque la escribimos manual

        if event.name == "'":
            # Pulsamos ', escribimos ' y esperamos la siguiente tecla
            write_text("'")
            listening = True
            timer = threading.Timer(0.5, timeout_no_next_char)
            timer.start()
            return False  # Bloquear el ' original porque ya lo escribimos manual

keyboard.hook(on_press)

print("Script running. Press ' followed by a character to convert.")
print("Press ESC to exit.")
keyboard.wait('esc')
print("Exiting script...")
