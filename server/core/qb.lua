if Config.framework == 'qb' then
    print('qb-core in use')
    QBCore = exports[Config.coreName]:GetCoreObject()

    exports("getPlayerCID", function(source)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        local cid = Player.PlayerData.citizenid
        return cid
    end)

    exports("createUseableItem", function(source, item, cb)
        QBCore.Functions.CreateUseableItem(item, cb)
    end)

    exports("removeMoney", function(source, type, amount)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        Player.Functions.RemoveMoney(type, amount)
    end)

    exports("addMoney", function(source, type, amount)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        Player.Functions.AddMoney(type, amount)
    end)

    exports("getMoney", function(source, type, amount)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if Player.Functions.GetMoney(type) >= amount then return true else return false end
    end)
end