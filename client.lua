local online = 0

local Debug = true

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    online = 1
    TriggerServerEvent('fb-sitequery:Login', online)
    if Debug then print('Logging in...') end
end)

RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
    online = 0
    TriggerServerEvent('fb-sitequery:Logout', online)
    if Debug then print('Logging out...') end
end)

RegisterNetEvent('fb-sitequery:MakeSureThatShitCloses', function()
    online = 0
    TriggerEvent('QBCore:Client:OnPlayerUnload', source)
    if Debug then print('Logging out via menu...') end
end)