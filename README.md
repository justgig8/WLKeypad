WLKeypad
========

Source code project for a fast Numeric Keypad implemented with:-

0-9 buttons
Reset button
Backspace button
Display text field which shows values being entered

Keypad code can be plugged in any project as it follows the delegate pattern.
Any view controller implementing the keypad shall have to follow the required delegate protocol.

Configurations and flexibility offered to the parent view controller which contains the keypad view are as follows:-
1. Max length - a maximum length of value that can be entered using the keypad.
2. Placeholder text - of the text field where entered values are shown.
