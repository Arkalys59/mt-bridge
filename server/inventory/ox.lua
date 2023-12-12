if Config.inventory == 'ox_inventory' then
    print("ox_inventory in use")

    lib.callback.register('mt-bridge:server:registerStash', function(source, id, slots, weight)
        exports.ox_inventory:RegisterStash(id, id, slots, weight)
    end)

    lib.callback.register('mt-bridge:server:registerShop', function(source, label, items)
        exports.ox_inventory:RegisterShop(label, { name = label, inventory = items })
    end)

    exports("addItem", function(source, item, count, metadata, slot)
        exports.ox_inventory:AddItem(source, item, count, metadata, slot)
    end)

    exports("removeItem", function(source, item, count, metadata, slot)
        exports.ox_inventory:RemoveItem(source, item, count, metadata, slot)
    end)

    exports("getItemCount", function(source, item)
        return exports.ox_inventory:GetItemCount(source, item)
    end)

    exports("searchItem", function(source, count, item)
        return exports.ox_inventory:Search(source, count, item)
    end)

    exports("setMetadata", function(source, slot, metadata)
        exports.ox_inventory:SetMetadata(source, slot, metadata)
    end)
end