# Message to control an LED or a group of LEDs on the robot.

string name         # Name of the LED or group of LEDs (e.g., "FaceLeds", "ChestLeds").
uint8 red           # Red channel value (0-255).
uint8 green         # Green channel value (0-255).
uint8 blue          # Blue channel value (0-255).
float32 duration    # Duration of the fade transition in seconds.