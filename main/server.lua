local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("nintendoswitch", function(source, item)
	TriggerClientEvent('ns-switch:use', source)
end)