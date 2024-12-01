local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('fb-sitequery:Login', function(online)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = MySQL.Sync.fetchAll('SELECT online FROM website WHERE citizenid = ?', { Player.PlayerData.citizenid })
    print(result[1])
    if result[1] == nil then
        MySQL.insert('INSERT INTO website (citizenid, name, firstname, lastname, online) VALUES (:citizenid, :name, :firstname, :lastname, :online) ON DUPLICATE KEY UPDATE online = :online', {
            citizenid = Player.PlayerData.citizenid,
            name = Player.PlayerData.name,
            firstname = Player.PlayerData.charinfo.firstname,
            lastname = Player.PlayerData.charinfo.lastname,
            online = online
        })
    else
        MySQL.update('UPDATE website SET online = ? WHERE citizenid = ?', { online, Player.PlayerData.citizenid })
    end
    --print(Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname)
    --print(online)
end)

RegisterNetEvent('fb-sitequery:Logout', function(online)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = MySQL.Sync.fetchAll('SELECT online FROM website WHERE citizenid = ?', { Player.PlayerData.citizenid })
    print(result[1])
    if result[1] == nil then
        MySQL.insert('INSERT INTO website (citizenid, name, firstname, lastname, online) VALUES (:citizenid, :name, :firstname, :lastname, :online) ON DUPLICATE KEY UPDATE online = :online', {
            citizenid = Player.PlayerData.citizenid,
            name = Player.PlayerData.name,
            firstname = Player.PlayerData.charinfo.firstname,
            lastname = Player.PlayerData.charinfo.lastname,
            online = online
        })
    else
        MySQL.update('UPDATE website SET online = ? WHERE citizenid = ?', { online, Player.PlayerData.citizenid })
    end
    --MySQL.update('UPDATE website SET online = ? WHERE citizenid = ?', { online, Player.PlayerData.citizenid })
    --print(Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname)
    --print(online)
end)