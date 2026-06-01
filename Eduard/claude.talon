# Voice commands for the Claude desktop app.
# Key bindings mirror Claude's built-in shortcuts panel (cmd-/ in app).
app.bundle: com.anthropic.claudefordesktop
-
# --- General ---
shortcuts show: key(cmd-/)
session (new | fresh): key(cmd-n)
session close: key(cmd-w)
session next: key(shift-cmd-])
session (last | previous): key(shift-cmd-[)
(split | pane) focus right: key(ctrl-])
(split | pane) focus left: key(ctrl-[)
# "Open session in split pane" is option-click in the app:
split click:
    key(alt:down)
    mouse_click(0)
    key(alt:up)
(claude | response) stop: key(escape)

# --- Panes ---
diff (toggle | show): key(shift-cmd-d)
preview (toggle | show): key(shift-cmd-p)
element select: key(shift-cmd-s)
(files | file browser) (toggle | show): key(shift-cmd-f)
terminal (toggle | show): key(ctrl-`)
pane close: key(cmd-\)
side chat (toggle | show): key(cmd-;)

# --- Composer ---
mode (menu | open): key(shift-cmd-m)
model (menu | open): key(shift-cmd-i)
effort (menu | open): key(shift-cmd-e)
# Pick a menu item 1-9 after a menu is open:
menu <number_small>: key("{number_small}")
file (upload | attach): key(cmd-u)

# --- Claude dictation (pop once to finish) ---
claude (dictate | talk | listen): user.claude_dictation_start()
