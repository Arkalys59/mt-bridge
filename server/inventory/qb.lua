if Config.inventory == 'qb-inventory' and Config.framework == 'qb' then
    print("qb-inventory in use")
    QBCore = exports[Config.coreName]:GetCoreObject()

    exports("addItem", function(source, item, count, metadata, slot)
        local src = source
        local Player = QBCore.Function.GetPlayer(src)
        if not Player then return end
        Player.Functions.AddItem(item, count, slot, metadata)
    end)

    exports("removeItem", function(source, item, count, metadata, slot)
        local src = source
        local Player = QBCore.Function.GetPlayer(src)
        if not Player then return end
        Player.Functions.RemoveItem(item, count, slot)
    end)

    exports("getItemCount", function(source, item)
        local src = source
        local Player = QBCore.Function.GetPlayer(src)
        if not Player then return end
        return Player.Functions.GetItemByName(item).amount
    end)

    exports("searchItem", function(source, count, item)
        local src = source
        local Player = QBCore.Function.GetPlayer(src)
        if not Player then return end
        return Player.Functions.GetItemByName(item)
    end)

    lib.callback.register('mt-bridge:server:checkItemCount', function(source, item)
        local src = source 
        local Player = Core.Functions.GetPlayer(src)
        if not Player then return end
        if not Player.Functions.GetItemByName(item) then return 0 end
        if Player.Functions.GetItemByName(item) then return Player.Functions.GetItemByName(item).amount end
    end)
end