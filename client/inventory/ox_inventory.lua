if not Config.inventory == 'ox_inventory' then return end

exports("getItemNames", function()
    itemNames = {}
    for item, data in pairs(exports.ox_inventory:Items()) do
        itemNames[item] = data
    end
    return itemNames
end)

exports("openInvStash", function(id, weight, slots)
    lib.callback('mt-businesses:server:registerStash', false, function()
        exports.ox_inventory:openInventory('stash', id)
    end, id, slots, (weight*1000))
end)