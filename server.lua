local QBCore = exports['qb-core']:GetCoreObject()
AddEventHandler("onResourceStart", function(resource)
	if resource ~= GetCurrentResourceName() then 
		return 
	end
	print("Datsun's IPL Toggler Loaded")
end)

QBCore.Commands.Add('ipltoggle',"Toggle IPL's",{{name = "IPL Name", help = "IPL or ymap name"},{name = 'state', help = "on | off *leave blank for toggle*"}}, false, function(source, args)
	if not args then print('No args passed!') return end
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	if not Player then return else
		local toSend = {
			name = args[1],
			state = (args[2] or nil),
		}
		TriggerClientEvent('IPL_Toggler:client:ToggleIPL', src, toSend)
	end
end, 'Admin')

