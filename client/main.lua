exports("notify", function(title, description, type)
    exports['ls-notify']:sendNotify(description, type)
end)

exports("progressBar", function(label, duration, anim, prop)
    return lib.progressCircle({ label = label, duration = duration, position = 'bottom', disable = { move = true }, useWhileDead = false, canCancel = true, anim = anim, prop = prop })
end)

exports("createMapBlip", function(coords, sprite, display, scale, color, label)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, display)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, scale)
    SetBlipColour(blip, color)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(label)
    EndTextCommandSetBlipName(blip)
    return blip
end)

exports("loadModel", function(model)
    local time = 1000
    if not HasModelLoaded(model) then
        while not HasModelLoaded(model) do
            if time > 0 then time = time - 1 RequestModel(model) else time = 1000 break end Wait(10)
        end
    end
end)