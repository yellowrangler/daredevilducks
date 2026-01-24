#!/usr/bin/env python3

import curses

def main(stdscr):
    # Initialize curses
    curses.curs_set(0)  # Hide cursor
    stdscr.keypad(True) # Enable keypad mode for arrow keys

    options = ["Item A", "Item B", "Item C", "Item D", "Item E", "Item F"]
    current_selection = 0
    scroll_offset = 0

    while True:
        stdscr.clear() # Clear screen

        # Display the list with scrolling
        for i, option in enumerate(options):
            # Only show items within the current view (handling scroll_offset)
            if scroll_offset <= i < scroll_offset + curses.LINES - 2: # -2 for title/prompt
                display_index = i - scroll_offset
                if i == current_selection:
                    stdscr.addstr(display_index + 1, 2, f"> {option}", curses.A_REVERSE) # Highlight selection
                else:
                    stdscr.addstr(display_index + 1, 2, f"  {option}")

        stdscr.addstr(0, 2, "Use arrow keys to navigate, Enter to select, 'q' to quit:")
        stdscr.refresh()

        key = stdscr.getch()

        if key == ord('q'):
            break
        elif key == curses.KEY_UP:
            if current_selection > 0:
                current_selection -= 1
                if current_selection < scroll_offset:
                    scroll_offset -= 1
        elif key == curses.KEY_DOWN:
            if current_selection < len(options) - 1:
                current_selection += 1
                if current_selection >= scroll_offset + curses.LINES - 2:
                    scroll_offset += 1
        elif key == curses.KEY_ENTER or key in [10, 13]: # Enter key (both Linux/Windows)
            stdscr.clear()
            stdscr.addstr(0, 0, f"You selected: {options[current_selection]}")
            stdscr.addstr(1, 0, "Press any key to continue...")
            stdscr.getch() # Wait for another key press
            # Could add logic here to break or continue

curses.wrapper(main)
