fx_version 'adamant'

game 'gta5'

lua54 'yes'


client_scripts {

    "client/*.lua",  
}


shared_scripts {
    "shared/config.lua",
    "@jLib/lang.lua",
    "@jLib/import.lua",
    "locales/*.lua"
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "server/*.lua"
}