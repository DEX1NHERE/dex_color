-- fr-studios
local QBCore = exports['qb-core']:GetCoreObject()

-- fr-studios
local gangZones = {
    -- fr-studios
    {
        coords = vector3(325.8, -210.77, 61.49), 
        radius = 85.0, 
        color = 2, 
        alpha = 128
    },
    -- fr-studios

    {
        coords = vector3(431.78, -983.0, 30.71), 
        radius = 150.0, 
        color = 3, 
        alpha = 128
    }
}

-- fr-studios
Citizen.CreateThread(function()
    -- fr-studios
    for _, zone in ipairs(gangZones) do
        -- fr-studios
        local blip = AddBlipForRadius(zone.coords.x, zone.coords.y, zone.coords.z, zone.radius)
        -- fr-studios
        SetBlipColour(blip, zone.color)
        -- fr-studios
        SetBlipAlpha(blip, zone.alpha)
    end
end)

-- fr-studios