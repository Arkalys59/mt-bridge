if not Config.framework == 'qb' then return end
QBCore = exports[Config.coreName]:GetCoreObject()

exports("getPlayerJob", function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    local PlayerJob = PlayerData.job.name
    return PlayerJob
end)