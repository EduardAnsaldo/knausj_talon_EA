from talon import Context, actions

# While Talon is in dictation mode, a single pop returns to command mode.
# This is a global behavior (any app), more specific than the default mouse
# pop handler, so it takes over only while dictating.
ctx = Context()
ctx.matches = r"""
mode: dictation
"""


@ctx.action_class("user")
class UserActions:
    def noise_trigger_pop():
        actions.mode.disable("dictation")
        actions.mode.enable("command")
