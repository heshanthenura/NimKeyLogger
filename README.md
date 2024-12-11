# Keystroke Listener

This project listens for keyboard events on Windows using the `winim` library in Nim. It captures key presses and displays the corresponding key codes in hexadecimal format. The hex values correspond to Windows virtual key codes, which represent different keys on the keyboard. This tool can be useful for monitoring keyboard input or building key event-based applications.

## Features

- Capture keyboard input events (key presses).
- Display key codes in hexadecimal format.
- Hexadecimal values correspond to Windows virtual key codes.
- Easy to use and extend with additional functionality.

## Prerequisites

Before running the project, ensure you have the following:

- [Nim](https://nim-lang.org/) installed.
- [winim](https://github.com/khchen/winim) library for Windows API bindings.

## Installation

1. Install Nim by following the instructions on the [official website](https://nim-lang.org/install.html).
2. Install the `winim` library by running the following command:
   ```bash
   nim install winim
   ```

## Virtual Key Codes Reference

For more details on the virtual key codes and their corresponding keys, please refer to the official Microsoft documentation on [Virtual Key Codes](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes).
