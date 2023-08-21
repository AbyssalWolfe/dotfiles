import dracula.draw

config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing':{
        'vertical':6,
        'horizontal':8
    }
})

# Play videos in MPV
config.bind(',f', 'hint links spawn --userscript play {hint-url}')
config.bind(',F', 'spawn --userscript play {url}')
