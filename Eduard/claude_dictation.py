from talon import Context, Module, actions

mod = Module()

mod.tag(
    "claude_dictation",
    desc="Active while Claude's built-in dictation is recording and Talon is asleep; a single pop ends it",
)

# Always-active context used only to toggle the tag on/off.
ctx_tag = Context()

# Active only while Claude dictation is running: Talon is asleep AND our tag is
# set. While active, a single pop stops Claude's dictation and wakes Talon.
ctx_pop = Context()
ctx_pop.matches = r"""
mode: sleep
and tag: user.claude_dictation
"""


@mod.action_class
class Actions:
    def claude_dictation_start():
        """Hand the mic to Claude's built-in dictation.

        Sends Claude's in-composer dictation shortcut (cmd-d), sets the
        claude_dictation tag, then disables Talon speech so spoken words
        are transcribed by Claude instead of triggering Talon commands.
        Pop once to finish.
        """
        actions.key("cmd-d")
        ctx_tag.tags = ["user.claude_dictation"]
        actions.speech.disable()

    def claude_dictation_stop():
        """Stop Claude's dictation and wake Talon back up."""
        actions.key("cmd-d")
        actions.speech.enable()
        ctx_tag.tags = []


@ctx_pop.action_class("user")
class PopActions:
    def noise_trigger_pop():
        actions.user.claude_dictation_stop()
