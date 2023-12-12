if Config.inventory == 'qb-inventory' and Config.framework == 'qb' then
    print('qb-inventory in use')
    QBCore = exports[Config.coreName]:GetCoreObject()

    exports("getItemNames", function()
        return QBCore.Shared.Items
    end)

    exports("openInvStash", function(id, weight, slots)
        TriggerEvent("inventory:client:SetCurrentStash", id)
        TriggerServerEvent("inventory:server:OpenInventory", "stash", id, { maxweight = (weight*1000), slots = slots })
    end)

    exports("hasItem", function(item, count)
        local hasItem = QBCore.Functions.HasItem(item)
        if QBCore.Functions.HasItem(item) then return true end
        return false
    end)

    exports("getItemCount", function(item)
        return lib.callback.await('mt-bridge:server:checkItemCount', false, item)
    end)

    exports("createShop", function(items)
        local items = {}
        local slots = 0
        for y, j in pairs(items) do
            items[#items+1] = { name = j.name, price = tonumber(j.price), amount = tonumber(j.count), info = {}, slot = y }
            slots += 1
        end
        local Item = { label = 'farming_shop', slots = slots, items = items }
        TriggerServerEvent("inventory:server:OpenInventory", "shop", 'farming_shop', Item)
    end)
end