if Config.framework == 'esx' then
    print('esx in use')
    ESX = exports[Config.coreName]:getSharedObject()

    exports("getPlayerCID", function(source)
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        local cid = Player.identifier
        return cid
    end)

    exports("createUseableItem", function(source, item, cb)
        ESX.RegisterUsableItem(item, cb)
    end)

    exports("removeMoney", function(source, type, amount)
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        Player.removeMoney(amount)
    end)

    exports("addMoney", function(source, type, amount)
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        Player.addMoney(amount)
    end)

    exports("getMoney", function(source, type, amount)
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        if Player.getMoney() >= amount then return true else return false end
    end)
end