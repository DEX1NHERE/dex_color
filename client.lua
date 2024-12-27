local QBCore = exports['qb-core']:GetCoreObject()

local gangZones = {
    {
        coords = vector3(325.8, -210.77, 61.49), 
        radius = 85.0, 
        color = 2, 
        alpha = 128
    },

    {
        coords = vector3(431.78, -983.0, 30.71), 
        radius = 150.0, 
        color = 3, 
        alpha = 128
    }
}

Citizen.CreateThread(function()
    for _, zone in ipairs(gangZones) do
        local blip = AddBlipForRadius(zone.coords.x, zone.coords.y, zone.coords.z, zone.radius)
        SetBlipColour(blip, zone.color)
        SetBlipAlpha(blip, zone.alpha)
    end
end)
