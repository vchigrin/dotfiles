#!/usr/bin/env python3
import re
import json
import subprocess
import time

BUILTIN_DISPLAY_DEV = 'eDP-1'
RE_MAIN_DISPLAY_DEV = re.compile('^(HDMI-A-[0-9]+)')
MAIN_DISPLAY_PREFERRED_RESOLUTION = '1920x1080'
g_last_seen_state = None

def get_current_state() -> str:
    with open('/proc/acpi/button/lid/LID/state') as f:
        for line in f:
            parts = line.strip().split()
            if parts[0] == 'state:':
                return parts[1]
    return None


def change_builtin_display_state(desired_state: str):
    try:
        subprocess.check_call([
            'swaymsg', 'output', BUILTIN_DISPLAY_DEV, desired_state
        ])
    except Exception as e:
        print(f"Failed change output. Error {e}")

def find_main_display_dev() -> str:
    try:
        content = subprocess.check_output([
            'swaymsg', '-t', 'get_outputs'
        ])
    except Exception as e:
        print(f"Failed get outputs. Error {e}")
        return None
    items = json.loads(content)
    for item in items:
        match = RE_MAIN_DISPLAY_DEV.match(item['name'])
        if match:
            return match.group(1)
    return None

def fix_main_display_resolution():
    main_display_dev = find_main_display_dev()
    if not main_display_dev:
        return
    try:
        subprocess.check_call([
            'swaymsg', 'output', main_display_dev, 'res',
            MAIN_DISPLAY_PREFERRED_RESOLUTION
        ])
    except Exception as e:
        print(f"Failed change resolution. Error {e}")


def check_iteration():
    global g_last_seen_state
    current_state = get_current_state()
    if current_state == g_last_seen_state:
        return
    if current_state == 'open':
        change_builtin_display_state('enable')
    elif current_state == 'closed':
        change_builtin_display_state('disable')
        fix_main_display_resolution()
    g_last_seen_state = current_state


def main():
    while True:
        check_iteration()
        time.sleep(1)

if __name__ == '__main__':
    main()
