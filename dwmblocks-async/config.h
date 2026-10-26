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
#define BLOCKS(X)             \
    X("", "~/.config/dwmblocks-async/sb/sb-cpu",                10, 12) \
    X("", "~/.config/dwmblocks-async/sb/sb-ram",                10, 11) \
    X("", "~/.config/dwmblocks-async/sb/sb-temp",               60, 10) \
    X("", "~/.config/dwmblocks-async/sb/sb-home",               300, 9) \
    X("", "~/.config/dwmblocks-async/sb/sb-update",             3600, 8) \
    X("", "~/.config/dwmblocks-async/sb/sb-brightness",         0, 2) \
    X("", "~/.config/dwmblocks-async/sb/sb-network",            5, 7) \
    X("", "~/.config/dwmblocks-async/sb/sb-bluetooth",          5, 6) \
    X("", "~/.config/dwmblocks-async/sb/sb-battery",            5, 5) \
    X("", "~/.config/dwmblocks-async/sb/sb-volume",             0, 1) \
    X("", "~/.config/dwmblocks-async/sb/sb-clock",              1, 3) \
    X("", "~/.config/dwmblocks-async/sb/sb-rofipowermenu",              0, 4)

#endif  // CONFIG_H
