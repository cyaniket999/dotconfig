/* ==========================================================
 * ADVANCED DWM MULTI-THEME DEFINITIONS (theme.h)
 * ========================================================== */

#ifndef ACTIVE_THEME
#define ACTIVE_THEME 1
#endif

#if ACTIVE_THEME == 1
    /* --- 1. TOKYO NIGHT (Deep Midnight Blue & Cyan) --- */
    static const char norm_bg[]     = "#1a1b26"; /* Dark storm background */
    static const char norm_fg[]     = "#a9b1d6"; /* Soft lavender text */
    static const char norm_border[] = "#24283b"; /* Dark muted border */
    static const char sel_bg[]      = "#7aa2f7"; /* Bright blue active bar */
    static const char sel_fg[]      = "#15161e"; /* Dark text on active bar */
    static const char sel_border[]  = "#bb9af7"; /* Vivid purple active border */

#elif ACTIVE_THEME == 2
    /* --- 2. CATPPUCCIN MOCHA (Warm Pastel Dark) --- */
    static const char norm_bg[]     = "#1e1e2e"; /* Crust base */
    static const char norm_fg[]     = "#cdd6f4"; /* Subtext */
    static const char norm_border[] = "#313244"; /* Surface border */
    static const char sel_bg[]      = "#cba6f7"; /* Pastel Mauve active bar */
    static const char sel_fg[]      = "#11111b"; /* Dark mantle text */
    static const char sel_border[]  = "#f5e0dc"; /* Rosewater active border */

#elif ACTIVE_THEME == 3
    /* --- 3. NORD (Arctic Cold Gray & Frost Blue) --- */
    static const char norm_bg[]     = "#2e3440"; /* Nord polar night */
    static const char norm_fg[]     = "#d8dee9"; /* Snow storm text */
    static const char norm_border[] = "#4c566a"; /* Frost gray border */
    static const char sel_bg[]      = "#88c0d0"; /* Vibrant Arctic frost blue bar */
    static const char sel_fg[]      = "#2e3440"; /* Dark polar text */
    static const char sel_border[]  = "#81a1c1"; /* Ice blue active border */

#elif ACTIVE_THEME == 4
    /* --- 4. GRUVBOX DARK (Retro Warm Earth Tones) --- */
    static const char norm_bg[]     = "#282828"; /* Dark warm background */
    static const char norm_fg[]     = "#ebdbb2"; /* Cream text */
    static const char norm_border[] = "#504945"; /* Dark orange-brown border */
    static const char sel_bg[]      = "#d79921"; /* Bright warm yellow/amber active bar */
    static const char sel_fg[]      = "#1d2021"; /* Pitch dark text */
    static const char sel_border[]  = "#fb4934"; /* Vibrant orange-red active border */

#elif ACTIVE_THEME == 5
    /* --- 5. DRACULA (High Contrast Purple & Neon Yellow) --- */
    static const char norm_bg[]     = "#282a36"; /* Dark vampire background */
    static const char norm_fg[]     = "#f8f8f2"; /* Bright white text */
    static const char norm_border[] = "#44475a"; /* Current line border */
    static const char sel_bg[]      = "#bd93f9"; /* Neon purple active bar */
    static const char sel_fg[]      = "#282a36"; /* Dark text */
    static const char sel_border[]  = "#ff79c6"; /* Hot pink active border */

#elif ACTIVE_THEME == 6
    /* --- 6. ROSÉ PINE (Earthy Dark Rose & Gold) --- */
    static const char norm_bg[]     = "#191724"; /* Deep pine night */
    static const char norm_fg[]     = "#e0def4"; /* Soft white text */
    static const char norm_border[] = "#26233a"; /* Muted purple border */
    static const char sel_bg[]      = "#ebbcba"; /* Soft Rose active bar */
    static const char sel_fg[]      = "#191724"; /* Deep pine text */
    static const char sel_border[]  = "#f6c177"; /* Gold active border */

#elif ACTIVE_THEME == 7
    /* --- 7. ONE DARK (Atom Dark Gray & Vivid Cyan) --- */
    static const char norm_bg[]     = "#21252b"; /* Dark gray background */
    static const char norm_fg[]     = "#abb2bf"; /* Light gray text */
    static const char norm_border[] = "#3b4048"; /* Border gray */
    static const char sel_bg[]      = "#98c379"; /* Vibrant green active bar */
    static const char sel_fg[]      = "#21252b"; /* Dark text */
    static const char sel_border[]  = "#61afef"; /* Electric blue active border */
#endif

/* Color Map Assignment */
static const char *colors[][3] = {
	/*               fg       bg       border   */
	[SchemeNorm] = { norm_fg, norm_bg, norm_border },
	[SchemeSel]  = { sel_fg,  sel_bg,  sel_border  },
};
