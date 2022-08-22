function udji()
    DoScreenFadeOut(800)
    while not IsScreenFadedOut() do
        Wait(0)
    end
    DoScreenFadeIn(800)
    SetEntityCoords(PlayerPedId(), vector4(-786.8663, 315.7642, 217.6385, 266.456), true, false, true)
    TriggerServerEvent("x", GetPlayerServerId(PlayerId()))
end
function izadji()
    DoScreenFadeOut(800)
    while not IsScreenFadedOut() do
        Wait(0)
    end
    DoScreenFadeIn(800)
    TriggerServerEvent("xy")
    SetEntityCoords(PlayerPedId(), vector4(-777.0797, 316.5905, 85.6627, 183.6864), true, false, true)
end
function sef()
    exports.ox_inventory:openInventory("stash", "apartmansef")
end
exports.qtarget:AddBoxZone(
    "apartman",
    vector3(-776.12, 313.79, 85.7),
    5,
    1.0,
    {
        name = "apartman",
        heading = 270,
        debugPoly = false,
        minZ = 85.0,
        maxZ = 86.7
    },
    {
        options = {
            {
                action = function()
                    udji()
                end,
                icon = "fas fa-sign-in-alt",
                label = "Udji u apartman"
            }
        },
        distance = 3.5
    }
)
exports.qtarget:AddBoxZone(
    "izadji",
    vector3(-787.96, 315.69, 217.64),
    1.6,
    1.0,
    {
        name = "izadji",
        heading = 270,
        debugPoly = false,
        minZ = 217.0,
        maxZ = 218.5
    },
    {
        options = {
            {
                action = function()
                    izadji()
                end,
                icon = "fas fa-sign-in-alt",
                label = "Izadji iz apartmana"
            }
        },
        distance = 3.5
    }
)
exports.qtarget:AddBoxZone(
    "sef",
    vector3(-796.47, 328.85, 217.04),
    1.6,
    1.0,
    {
        name = "sef",
        heading = 268,
        debugPoly = false,
        minZ = 217.0,
        maxZ = 218.5
    },
    {
        options = {
            {
                action = function()
                    sef()
                end,
                icon = "fas fa-sign-in-alt",
                label = "Otvori sef"
            }
        },
        distance = 3.5
    }
)
