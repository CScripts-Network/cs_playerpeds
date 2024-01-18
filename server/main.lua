Core = exports['cs_lib']:GetLib()

RegisterCommand(Config.Command, function(source, args, rawCommand)
    local license
    for k,v in pairs(GetPlayerIdentifiers(source))do
        if Config.WhiteListType == 'STEAM' and string.sub(v, 1, string.len("steam:")) == "steam:" then
            license = v:gsub("steam:", "")
        elseif Config.WhiteListType == 'LICENSE' and string.sub(v, 1, string.len("license:")) == "license:" then
            license = v:gsub("license:", "")
        elseif Config.WhiteListType == 'DISCORD' and string.sub(v, 1, string.len("discord:")) == "discord:" then
            license = v:gsub("discord:", "")
        end
    end
    TriggerClientEvent('cs_playerpeds:openmenu', source, license)
end, false)

Core.VersionCheck("https://raw.githubusercontent.com/CScripts-Network/cs_playerpeds/main/version", 'cs_playerpeds')