RegisterServerEvent('x', function(id)
    SetPlayerRoutingBucket(source, id)
    print(id)
end)

RegisterServerEvent('xy',function()
    SetPlayerRoutingBucket(source, 0)
end)

local privatnisef = {
    {
        id = 'apartmansef',
        label = 'Privatni Sef',
        slots = 100,
        weight = 1000000,
        owner = true,
    },
}
AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName then
        for i=1, #privatnisef do
            local sef = privatnisef[i]
            exports.ox_inventory:RegisterStash(sef.id, sef.label, sef.slots, sef.weight, sef.owner)
        end
    end
end)

ESX.RegisterServerCallback('getaj', function(source,cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    cb(xPlayer.getIdentifier())
end)