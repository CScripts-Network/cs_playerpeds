Core = exports['cs_lib']:GetLib()
Citizen.CreateThread(function()
    while not Core.FrameworkIsReady() do Wait(1000); end
end)

RegisterNetEvent('cs_playerpeds:openmenu')
AddEventHandler('cs_playerpeds:openmenu', function(license)
    if Config.Whitelist[license] then
        local optionss = {}
        for i=1, #Config.Whitelist[license] do
            optionss[i] = {
                title = Config.Whitelist[license][i],
                description = '',
                onSelect = function()
                    Core.SetPed(PlayerId(), Config.Whitelist[license][i])
                end
            }
        end

        lib.registerContext({
            id = 'ped_menu',
            title = 'Ped List',
            options = optionss
        })
    lib.showContext('ped_menu')
    end
end)