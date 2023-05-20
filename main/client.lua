RegisterNetEvent('ns-switch:use')
AddEventHandler('ns-switch:use', function()
	SetNuiFocus(true, true)
	SendNUIMessage({
		type = "open"
	})
	nintendoAnim()
end)

RegisterNUICallback('exit', function()
    SetNuiFocus(false, false)
	DeleteObject(attachProps)
	ClearPedTasksImmediately(PlayerPedId())
end)

function nintendoAnim()
	ClearPedTasksImmediately(PlayerPedId())
	local ped = PlayerPedId()
	local propName = "qua_nintendo"
	local coords = GetEntityCoords(ped)
	local prop = GetHashKey(propName)

	local dict = "amb@world_human_stand_fire@male@idle_a"
	local name = "idle_a"

	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(10)
		RequestAnimDict(dict)
	end

	RequestModel(prop)
	while not HasModelLoaded(prop) do
		Citizen.Wait(100)
	end
	attachProps = CreateObject(prop, coords,  1,  1,  1)
	TaskPlayAnim(ped, dict, name, 3.0, 3.0, -1, 50, 0, false, false, false)
	AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.16, 0.18, -0.05,  -30.0, 0.0, 0.0, false, false, false, true, 2, true)
	--AttachEntityToEntity(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot)
end