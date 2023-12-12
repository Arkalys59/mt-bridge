if Config.inventory == 'ox_inventory' then
    print('ox_inventory in use')

    exports("getItemNames", function()
        local itemNames = {}
        for item, data in pairs(exports.ox_inventory:Items()) do itemNames[item] = data end
        return itemNames
    end)

    exports("openInvStash", function(id, weight, slots)
        lib.callback('mt-bridge:server:registerStash', false, function()
            exports.ox_inventory:openInventory('stash', id)
        end, id, slots, (weight*1000))
    end)

    exports("hasItem", function(item, count)
        if exports.ox_inventory:GetItemCount(item) >= count then return true end
        return false
    end)

    exports("getItemCount", function(item)
        return exports.ox_inventory:GetItemCount(item)
    end)

    exports("createShop", function(items)
        lib.callback('mt-bridge:server:registerShop', false, function()
            exports.ox_inventory:openInventory('shop', { type = 'farming_shop' })
        end, 'farming_shop', items)
    end)
end