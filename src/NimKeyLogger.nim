import winim, strutils

let hook = SetWindowsHookEx(WH_KEYBOARD_LL, proc(nCode: cint, wParam: WPARAM, lParam: LPARAM): LRESULT {.stdcall.} =
    if nCode >= 0 and wParam == WM_KEYDOWN:
        let kbdStruct = cast[PKBDLLHOOKSTRUCT](lParam)
        echo kbdStruct.vkCode.toHex
    return CallNextHookEx(0.HHOOK, nCode, wParam, lParam), GetModuleHandle(nil), 0)

if hook == 0.HHOOK:
    echo "Failed to install hook."
    quit(1)

echo "Listening for keystrokes... Press Ctrl+C to exit."

var msg: MSG
while GetMessage(addr msg, 0.HWND, 0, 0):
    TranslateMessage(addr msg)
    DispatchMessage(addr msg)

UnhookWindowsHookEx(hook)