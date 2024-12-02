local online = 0

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    online = 1
    TriggerServerEvent('fb-sitequery:Login', online)
    print('Logging in...')
end)

RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
    online = 0
    TriggerServerEvent('fb-sitequery:Logout', online)
    print('Logging out...')
end)

RegisterNetEvent('fb-sitequery:MakeSureThatShitCloses', function()
    online = 0
    TriggerEvent('QBCore:Client:OnPlayerUnload', source)
    --TriggerServerEvent('fb-sitequery:Logout', online)
    print('Logging out via menu...')
end)

--[[ AddEventHandler("onResourceStart", function(resourceName)
    if GetCurrentResourceName() == resourceName then
        --online = 0
    end
end ]]