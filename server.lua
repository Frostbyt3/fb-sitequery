local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('fb-sitequery:Login', function(online)
    UpdateSQL(online)
    --print(Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname)
    --print(online)
end)

RegisterNetEvent('fb-sitequery:Logout', function(online)
    UpdateSQL(online)
    --MySQL.update('UPDATE website SET online = ? WHERE citizenid = ?', { online, Player.PlayerData.citizenid })
    --print(Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname)
    --print(online)
end)

RegisterNetEvent('fb-sitequery:LogoutAll', function(online)
    local src = source
    local Players = GetPlayers()
    local status = 0
    MySQL.update('UPDATE website SET online = 0 WHERE *')
end)

AddEventHandler('playerDropped', function(reason)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local online = 0
    local result = MySQL.Sync.fetchAll('SELECT online FROM website WHERE citizenid = ?', { Player.PlayerData.citizenid })
    local status = online
    print(status)
    if result[1] == nil then
        MySQL.insert('INSERT INTO website (citizenid, name, firstname, lastname, online) VALUES (:citizenid, :name, :firstname, :lastname, :online) ON DUPLICATE KEY UPDATE online = :online', {
            citizenid = Player.PlayerData.citizenid,
            name = Player.PlayerData.name,
            firstname = Player.PlayerData.charinfo.firstname,
            lastname = Player.PlayerData.charinfo.lastname,
            online = status
        })
    else
        print(status .. ': I got the status, boss!')
        MySQL.update('UPDATE website SET online = ? WHERE citizenid = ?', { status, Player.PlayerData.citizenid })
    end
end)

function UpdateSQL(online)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = MySQL.Sync.fetchAll('SELECT online FROM website WHERE citizenid = ?', { Player.PlayerData.citizenid })
    local status = online
    print(status)
    if result[1] == nil then
        MySQL.insert('INSERT INTO website (citizenid, name, firstname, lastname, online) VALUES (:citizenid, :name, :firstname, :lastname, :online) ON DUPLICATE KEY UPDATE online = :online', {
            citizenid = Player.PlayerData.citizenid,
            name = Player.PlayerData.name,
            firstname = Player.PlayerData.charinfo.firstname,
            lastname = Player.PlayerData.charinfo.lastname,
            online = status
        })
    else
        print(status .. ': I got the status, boss!')
        MySQL.update('UPDATE website SET online = ? WHERE citizenid = ?', { status, Player.PlayerData.citizenid })
    end
end