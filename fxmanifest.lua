fx_version 'cerulean'
games {'gta5'}
lua54 "yes"

author 'CScripts Network'
description 'Player Peds'
version '0.0.1'

shared_scripts {
	'@ox_lib/init.lua'
}

client_scripts {
	'config.lua',
	'client/**.lua'
}

server_scripts {
	'config.lua',
	'server/**.lua'
}

escrow_ignore {
    'config.lua',
}

dependencies {
	'cs_lib'
}