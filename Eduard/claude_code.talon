# Voice commands for Claude Code (the terminal TUI).
# Scoped to a terminal whose window title contains "claude". If these don't
# activate, check your terminal's actual title and adjust the regex below
# (Talon: menu > Help > "View log"/active contexts shows win.title).
tag: terminal
and win.title: /claude/i
-
# --- Global ---
todos toggle: key(ctrl-t)
transcript toggle: key(ctrl-o)
brief toggle: key(ctrl-shift-b)
history search: key(ctrl-r)

# --- Chat ---
mode cycle: key(shift-tab)
input clear: key(ctrl-l)
(agents kill | kill agents): key(ctrl-x ctrl-k)
(editor open | external editor): key(ctrl-g)
stash: key(ctrl-s)
line break: key(ctrl-j)
(claude stop | response stop | cancel): key(escape)
# task:background default is ctrl+b — conflicts with tmux's prefix key:
task background: key(ctrl-b)

# --- Chat (meta shortcuts) ---
# Claude Code's meta+key bindings. On macOS terminals meta is delivered
# as Option, so these use alt-. This requires the terminal to send Option
# as Meta (e.g. iTerm: "Left Option key = Esc+"; Terminal.app: "Use Option
# as Meta key"). If they still do nothing, that setting is likely off.
model (pick | picker): key(alt-p)
fast (toggle | mode): key(alt-o)
thinking toggle: key(alt-t)

# --- Claude dictation (pop once to return to command mode) ---
claude (dictate | talk | listen):
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
