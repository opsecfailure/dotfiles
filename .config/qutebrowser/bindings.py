config.unbind("<Ctrl+q>")
config.unbind("co")
config.unbind("m")

config.bind("!",  "cmd-set-text :open -t -r !")
config.bind("A",  "cmd-set-text --space :open -t")
config.bind("O",  "cmd-set-text --space :open -t -r")

config.bind("ma", "bookmark-add")
config.bind("md", "bookmark-del")
config.bind("mq", "quickmark-save")

config.bind("za", "config-cycle tabs.show always never")
config.bind("zs", "config-cycle statusbar.show always never")
config.bind("zz", (
    "config-cycle tabs.show always never "
    ";; config-cycle statusbar.show always never"
))

config.bind("Y",  "hint links spawn wl-copy {hint-url}")

config.bind("M",  "hint links spawn --detach oits media mpv {hint-url}")
config.bind(",M", "spawn --detach oits media mpv {url}")

config.bind("aM",  "hint links spawn --detach oits media mpv --no-video {hint-url}")
config.bind(",aM", "spawn --detach oits media mpv {url}")

config.bind("wY",  "spawn --detach oits dl yt-dlp {url}")
config.bind("wy",  "hint links spawn --detach oits dl yt-dlp {hint-url}")
config.bind(",wy", "hint --rapid links spawn --detach oits dl yt-dlp {hint-url}")

config.bind("wE",  "spawn --detach oits dl yt-dlp-music {url}")
config.bind("we",  "hint links spawn --detach oits dl yt-dlp-music {hint-url}")
config.bind(",we", "hint --rapid links spawn --detach oits dl yt-dlp-music {hint-url}")

config.bind("wA",  "spawn --detach oits dl yt-dlp-audio {url}")
config.bind("wa",  "hint links spawn --detach oits dl yt-dlp-audio {hint-url}")
config.bind(",wa", "hint --rapid links spawn --detach oits dl yt-dlp-audio {hint-url}")

config.bind("wC",  "spawn --detach oits dl curl2dl {url}")
config.bind("wc",  "hint links spawn --detach oits dl curl2dl {hint-url}")
config.bind(",wc", "hint --rapid links spawn --detach oits dl curl2dl {hint-url}")
