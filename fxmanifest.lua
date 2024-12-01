fx_version 'cerulean'
games { 'gta5' }

name "FB SQLQuery"
author 'Relyks'
description 'A script to read/write 1s and 0s to the players table in MySQL to tell whether a player is online or not'
version '1.0.0'

client_scripts {
    '@oxmysql/lib/MySQL.lua',
    'client.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua',
}
  
lua54 'yes'