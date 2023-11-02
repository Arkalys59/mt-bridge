if not Config.inventory == 'ox_inventory' then return end

lib.callback.register('mt-businesses:server:registerStash', function(source, id, slots, weight)
    exports.ox_inventory:RegisterStash(id, id, slots, weight)
end)