.include "src/include/function.s"

.data

# --- THEMATIC DIVIDERS ---
.global deco_vine, deco_banana, deco_leaves, deco_monkey
defstr deco_vine,       " ~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~<>-~ \n"
defstr deco_banana,     "  \\_/>  \\_/>  \\_/>  \\_/>  \\_/>  \\_/>  \\_/> \n"
defstr deco_leaves,     " \\|/   \\|/   \\|/   \\|/   \\|/   \\|/   \\|/ \n"
defstr deco_monkey,     " @(o.o)@   @(o.o)@   @(o.o)@   @(o.o)@ \n"

# --- STANDARD UI SEPARATORS ---
.global line_thin, line_thick, line_double, line_dot
defstr line_thin,       " ----------------------------------------- \n"
defstr line_thick,      " ========================================= \n"
defstr line_double,     " ≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡ \n"
defstr line_dot,        " ......................................... \n"

# --- ACTION MENUS ---
.global menu_yn, menu_continue, menu_combat, menu_magic, menu_nav
defstr menu_yn,         "       [ Y ] YES             [ N ] NO      \n"
defstr menu_continue,   "             [ PRESS ANY KEY ]             \n"
defstr menu_combat,     "  [1] ATTACK   [2] DEFEND   [3] ITEM       \n"
defstr menu_magic,      "  [1] SPELL    [2] FLEE                    \n"
defstr menu_nav,        "  [N] NORTH  [S] SOUTH  [E] EAST  [W] WEST \n"

# --- STATUS BARS ---
.global bar_hp_full, bar_hp_half, bar_hp_crit, bar_mp_full, bar_xp
defstr bar_hp_full,     " HP: [██████████] \n"
defstr bar_hp_half,     " HP: [█████     ] \n"
defstr bar_hp_crit,     " HP: [█         ] \n"
defstr bar_mp_full,     " MP: [**********] \n"
defstr bar_xp,          " XP: [=====>    ] \n"

# --- COMBAT & EVENT ALERTS ---
.global event_alert, event_crit, event_miss, event_lvlup, event_loot, event_dead
defstr event_alert,     " !!! ENEMY ENCOUNTERED !!! \n"
defstr event_crit,      " >>> CRITICAL STRIKE <<< \n"
defstr event_miss,      " ... the attack missed ... \n"
defstr event_lvlup,     " *** LEVEL UP! *** \n"
defstr event_loot,      " You found: "
defstr event_dead,      " YOU DIED. THE JUNGLE CLAIMS ANOTHER. \n"

# --- DIALOGUE & TEXT BOXES ---
.global box_top, box_mid, box_bot
defstr box_top,         " ┌───────────────────────────────────────┐ \n │ "
defstr box_mid,         " │ \n │ "
defstr box_bot,         " │ \n └───────────────────────────────────────┘ \n"

# --- POINTERS & SPACING ---
.global ui_arrow, ui_dot, pad_nl, pad_dnl, pad_tab
defstr ui_arrow,        "  > "
defstr ui_dot,          "  * "
defstr pad_nl,          "\n"
defstr pad_dnl,         "\n\n"
defstr pad_tab,         "    "
