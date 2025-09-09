app.bundle: co.posit.positron
app.bundle: com.microsoft.VSCode
# Looks for special string in window title.
# NOTE: This requires you to add a special setting to your VSCode settings.json
# See [our vscode docs](./README.md#terminal)
win.title: /focus:\[Terminal\]/
-
# makes the commands in terminal.talon available
tag(): terminal

# use readline keybindings for various editing commands
tag(): user.readline

# activates the implementation of the commands/functions in terminal.talon
tag(): user.generic_unix_shell
tag(): user.unix_utilities

# makes commands for certain applications available
# you can deactivate them if you do not use the application
tag(): user.git

