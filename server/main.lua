QBCore = exports['qb-core']:GetCoreObject()

lib.addCommand('admin', {
    help = 'Ouvrir le menu administrateur',
    restricted = 'group.staff'
}, function(source)
    if not QBCore.Functions.IsOptin(source) then TriggerClientEvent('QBCore:Notify', source, 'You are not on admin duty', 'error'); return end
    TriggerClientEvent('ps-adminmenu:client:OpenUI', source)
end)