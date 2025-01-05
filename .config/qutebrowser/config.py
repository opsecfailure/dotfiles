config.load_autoconfig(False)

c.auto_save.session = True
c.completion.height = "25%"
c.completion.show = "auto"
c.content.autoplay = False
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://easylist.to/easylist/fanboy-social.txt",
    "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
    "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
]
c.content.blocking.hosts.lists = [
    "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts"
]
c.content.cookies.accept = "no-3rdparty"
c.content.geolocation = False
c.content.mouse_lock = False
c.content.notifications.enabled = False
c.downloads.location.remember = False
c.downloads.prevent_mixed_content = True
c.editor.command = [
    "foot",
    "--app-id=qutebrowser_editor",
    "nvim",
    "{file}",
    "-c",
    "normal {line}G{column0}l"
]
c.fileselect.folder.command = [
    "foot",
    "--app-id=qutebrowser_fileselect",
    "lf",
    "-selection-path",
    "{}"
]
c.fileselect.handler = "external"
c.fileselect.multiple_files.command = [
    "foot",
    "--app-id=qutebrowser_fileselect",
    "lf",
    "-selection-path",
    "{}"
]
c.fileselect.single_file.command = [
    "foot",
    "--app-id=qutebrowser_fileselect",
    "lf",
    "-selection-path",
    "{}"
]
c.fonts.default_family = "GoMono Nerd Font Mono"
c.fonts.default_size = "16pt"
c.fonts.web.family.fixed = "GoMono Nerd Font Mono"
c.fonts.web.size.default = 20
c.fonts.web.size.default_fixed = 20
c.fonts.web.size.minimum = 20
c.tabs.close_mouse_button = "none"
c.tabs.indicator.width = 4
c.tabs.last_close = "blank"
c.tabs.mousewheel_switching = False
c.tabs.position = "left"
c.tabs.width = "18%"

config.source("base16-selenized-white.py")
config.source("bindings.py")
config.source("bangs.py")
