if not Config.inventory == 'qb-inventory' then return end
if not Config.framework == 'qb' then return end

exports("getItemNames", function()
    return QBCore.Shared.Items
end)

function openInvStash(id, weight, slots)
    
end