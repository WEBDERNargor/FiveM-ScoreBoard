local menu=true



RegisterNUICallback('close',function() 
    SendNUIMessage({
        action='close'
    })
    SetNuiFocus(false,false)
end)


Citizen.CreateThread(function() 
local id = GetPlayerServerId(PlayerId())
local name=GetPlayerName(PlayerId())

while true do
    if IsControlPressed(0,20) then
    SendNUIMessage({
        userid=id,
        steamname=name,
        action='open'
    })
    SetNuiFocus(true,true)
end
   Citizen.Wait(200)
end


end)