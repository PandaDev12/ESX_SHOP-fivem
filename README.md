#autour Panda_Dev
#Discord: https://discord.gg/VWqDrv6ca3

ouvrez le fichier esx_basicneeds puis ouvrez main.lua dans coter serveur puis rajouter c'est ligne :


ESX.RegisterUsableItem('vodka', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vodka', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification("vous avez consommer 1*Vodka")
end)

ESX.RegisterUsableItem('oasis', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('oasis', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 450000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification("vous avez consommer 1*oasis")
end)

ESX.RegisterUsableItem('pizza', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('pizza', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 600000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification("vous avez manger une pizza")
end)


ESX.RegisterUsableItem('kinder', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('kinder', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification("vous avez manger une kinder")
end)

ESX.RegisterUsableItem('twix', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('twix', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification("vous avez manger une twix")
end)


