local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('onClientResourceStart', function(resource)
    if GetCurrentResourceName() ~= resource then
		return
	end
	local name = QBCore.Functions.GetPlayerData().name
	if name then print('Thank You, '..name..', for choosing') end
	print("Datsun's IPL Toggler")
end)

if Config.UseKeybind == true then
	RegisterCommand('toggleIPL', function()
		if #Config.ToggleMaps ~= 0 then
			for _,name in ipairs(Config.ToggleMaps) do
				local data = {name = name, state = nil}
				TriggerEvent('IPL_Toggler:client:ToggleIPL', data)
			end
		else
			if Config.Debug then
				print("No maps listed in Config.ToggleMaps")
			else
				QBCore.Functions.Notify("No maps listed in Config.ToggleMaps",'error',2000)
			end
		end
	end, false)
	RegisterKeyMapping('toggleIPL', "Toggle IPL's", 'keyboard', Config.Keybind)
end

RegisterNetEvent('IPL_Toggler:client:ToggleIPL', function(data)
	local check = IsIplActive(data.name)
	local txt
	if check then txt = 'true' else txt = 'false' end
	if Config.Debug then 
		print('Current IPL Status: \n'..data.name..': '..txt)
	else
		QBCore.Functions.Notify('Current IPL Status: \n'..data.name..': '..txt, 'primary', 2000)
	end
	if not data.state then	
		if check then 
			RemoveIpl(data.name)
		elseif not check then
			RequestIpl(data.name)
		end
	elseif data.state == 'on' then
		RequestIpl(data.name)
	elseif data.state == 'off' then
		RemoveIpl(data.name)
	end
	check = IsIplActive(data.name) local txt
	if check then txt = 'true' else txt = 'false' end
	if Config.Debug then 
		print('New IPL Status: \n'..data.name..': '..txt)
	else
		QBCore.Functions.Notify('New IPL Status: \n'..data.name..': '..txt, 'primary', 2000)
	end
end)