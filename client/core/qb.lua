if Config.framework == 'qb' then
    print('qb-core in use')
    QBCore = exports[Config.coreName]:GetCoreObject()

    exports("getPlayerJob", function()
        local PlayerData = QBCore.Functions.GetPlayerData()
        local PlayerJob = PlayerData.job.name
        return PlayerJob
    end)

    exports("getPlayerJobIsBoss", function()
        local PlayerData = QBCore.Functions.GetPlayerData()
        local PlayerBoss = PlayerData.job.isboss
        return PlayerBoss
    end)
end