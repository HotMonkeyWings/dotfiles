# Qtile workspaces

from libqtile.config import Key, Group
from libqtile.command import lazy
from settings.keys import mod, keys


# Get the icons at https://www.nerdfonts.com/cheat-sheet (you need a Nerd Font)
# Icons: 
# nf-fa-firefox, 
# nf-fae-python, 
# nf-dev-terminal, 
# nf-fa-code, 
# nf-seti-config, 
# nf-mdi-folder, 
# nf-mdi-image, 
# nf-fa-video_camera, 
# nf-mdi-layers
group_names = [("   ", {'layout': 'monadtall'}),
               ("   ", {'layout': 'monadtall'}),
               ("   ", {'layout': 'monadtall'}),
               ("   ", {'layout': 'monadtall'}),
               ("   ", {'layout': 'monadtall'}),
               ("   ", {'layout': 'max'}),
               ("   ", {'layout': 'max'}),
               ("   ", {'layout': 'max'}),
               ("   ", {'layout': 'max'})]

groups = [Group(name, **kwargs) for name, kwargs in group_names]
for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])
