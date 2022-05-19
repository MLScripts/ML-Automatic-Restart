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
	  DropPlayer(source, "ML: Automatic Restart.")
        	os.exit()
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.41vw; margin: -0.1vw; background-color: rgba(255, 0, 0, 0.3); border-radius: 3px;"><i class="fas fa-angle-double-right"></i> ML Automatic Restart: {0}</div>',
            args = {"Restart!"}
        })
        Citizen.Wait(10800000)
        end
    end)