#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER "  "

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 45

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 1

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 0
// Define blocks for the status feed as X(icon, cmd, interval, signal).
#define BLOCKS(X)                                                                   \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-cpu",       10,  1)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-memory",    10,  2)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-weather",  3600,  3)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-home",      60,  4)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-battery",    5,  5)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-update",   3600,   10)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-temp",      10,  7)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-brightness",     0, 13)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-bluetooth", 10,  8)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-network",   10,  9)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-volume",     0, 6)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-clock",      1, 11)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-theme",      0, 14)     \
    X("", "/home/aniket/.config/dwmblocks-async/statusbar/sb-power",      0, 12)
#endif  // CONFIG_H
