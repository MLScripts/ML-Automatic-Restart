ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function kickML ()
    local xPlayers = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        xPlayer.kick("ML: Automatic Restart.")
    end
end



Citizen.CreateThread(function()
    while true do
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.41vw; margin: -0.1vw; background-color: rgba(255, 0, 0, 0.3); border-radius: 3px;"><i class="fas fa-angle-double-right"></i> ML Automatic Restart: {0}</div>',
            args = {"Automatische Restart in 30 seconden"}
        })
        Wait(30000)
                TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.41vw; margin: -0.1vw; background-color: rgba(255, 0, 0, 0.3); border-radius: 3px;"><i class="fas fa-angle-double-right"></i> ML Automatic Restart: {0}</div>',
            args = {"Automatische Restart in 20 seconden"}
        })
        Wait(20000)
            TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.41vw; margin: -0.1vw; background-color: rgba(255, 0, 0, 0.3); border-radius: 3px;"><i class="fas fa-angle-double-right"></i> ML Automatic Restart: {0}</div>',
            args = {"Automatische Restart in 10 seconden"}
        })
        Wait(10000) 
	       kickML ()
        	os.exit()
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.41vw; margin: -0.1vw; background-color: rgba(255, 0, 0, 0.3); border-radius: 3px;"><i class="fas fa-angle-double-right"></i> ML Automatic Restart: {0}</div>',
            args = {"Restart!"}
        })
        Citizen.Wait(10800000)
        end
    end)
