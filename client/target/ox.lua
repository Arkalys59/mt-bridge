if not Config.target == 'ox_target' then return end

exports("boxTarget", function(coords, size, rotation, debug, options)
    return exports.ox_target:addBoxZone({ coords = coords, size = size, rotation = rotation, debug = debug, options = options})
end)

exports("removeBoxTarget", function(target)
    exports.ox_target:removeZone(target)
end)