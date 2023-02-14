fx_version 'cerulean'
game 'gta5'

description "Toggle IPL's Quickly"
authors 'Datsun Drift'

dependancies {
	'qb-core'
}

shared_scripts {
	'config.lua',
}

server_script 'server.lua'
client_script 'client.lua'

lua54 'yes'