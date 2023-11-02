fx_version 'cerulean'
author 'Marttins - MT Scripts'
description 'bridge script for MT Scripts resources'
game 'gta5'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/**/*.lua',
}

server_scripts {
    'server/**/*.lua',
}