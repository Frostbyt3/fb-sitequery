local online = 0

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    online = 1
    TriggerServerEvent('fb-sitequery:Login', online)
end)

RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
    online = 0
    TriggerServerEvent('fb-sitequery:Logout', online)
end)