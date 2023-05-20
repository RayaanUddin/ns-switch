fx_version 'adamant'

game 'gta5'
author 'Rayaan Uddin (Nick Solo)'
description 'Nintendo Switch QBCORE'
version '1.0.0'

client_script { 
"main/client.lua"
}

server_script {
"main/server.lua",
'@mysql-async/lib/MySQL.lua',
} 

ui_page "html/index.html"
files {
    'html/index.html',
    'html/*.js',
    'html/*.css',
    'html/images/*.png',
    'qua_nintendo.ytyp',
    'html/images/games/*.png',
    'html/images/games/*.jpg'
}

lua54 'yes'