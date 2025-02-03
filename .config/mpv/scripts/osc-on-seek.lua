-- https://github.com/mpv-player/mpv/issues/3826#issuecomment-2270445161

mp.observe_property('seeking', 'native', function(_, seeking)
    if seeking then
        mp.command('script-message osc-show')
    end
end)
