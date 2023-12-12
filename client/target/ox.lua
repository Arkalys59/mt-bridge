if Config.target == 'ox_target' then
    print('ox_target in use')

    exports("boxTarget", function(coords, size, rotation, debug, options)
        return exports.ox_target:addBoxZone({ coords = coords, size = size, rotation = rotation, debug = debug, options = options})
    end)

    exports("sphereTarget", function(coords, radius, debug, options)
        return exports.ox_target:addSphereZone({ coords = coords, radius = radius, debug = debug, options = options})
    end)

    exports("removeBoxTarget", function(target)
        exports.ox_target:removeZone(target)
    end)

    exports("addEntityTarget", function(entity, options)
        exports.ox_target:addLocalEntity(entity, options)
    end)
end