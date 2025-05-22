--- Server-side tracking data for slot machine payouts
--- @class ServerData
--- @field played number Total amount of money players have spent on slot machines
--- @field paid number Maximum allowed payout threshold; machines only pay big prizes when played > paid

--- This table is used to control slot machine profitability.
--- You can increase the `paid` value to make machines pay out less frequently after a server restart.
--- Slot machines will only allow major wins (e.g. jackpots) once the server has collected enough money from players (i.e., when `played` exceeds `paid`).
serverData = {
    played = 0,
    paid = 0
}

-- Framework Functions
if Config.Framework == "vRP" then
    Tunnel, Proxy = module("vrp", "lib/Tunnel"), module("vrp", "lib/Proxy")
    vRP, vRPclient = Proxy.getInterface("vRP"), Tunnel.getInterface("vRP", "Slots")

    userIds = {}

    function GetUserId(player)
        if not userIds[player] then
            userIds[player] = vRP.getUserId{player}
        end

        return userIds[player] 
    end

    -- This function is used to check if you have administrative access for the wager command.
    function isAdmin(player)
        local user_id = GetUserId(player)
        if not user_id then return false end

        if vRP.hasPermission{user_id, "slots.wager"} then 
            return true
        end

        return false
    end

    -- This function is used to restrict access to the slot machines for certain players — for example, those who have played less than a specific amount of time on your server.
    function CheckConditions(player)
        local user_id = GetUserId(player)
        if not user_id then return false end

        -- EXAMPLE WITH NOTIFICATION
        -- if not vRP.hasLevel{user_id, 10} then
        --     Notify(player, "You must be at least level 10 to use the slot machines.")
        --     return false
        -- end

        return true
    end

    function GetMoney(player)
        local user_id = GetUserId(player)
        if not user_id then return false end

        return vRP.getMoney{user_id}
    end

    function TryPayment(player, amount)
        local user_id = GetUserId(player)
        if not user_id then return false end

        return vRP.tryPayment{user_id, amount}
    end

    function GiveMoney(player, amount)
        local user_id = GetUserId(player)
        if not user_id then return end

        vRP.giveMoney{user_id, amount}
    end
elseif Config.Framework == "QBCore" then
    QBCore = exports['qb-core']:GetCoreObject()

    function GetUserId(player)
        return GetPlayerIdentifierByType(player, "license")
    end

    function isAdmin(player)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        return QBCore.Functions.HasPermission(player, "admin")
    end

    function CheckConditions(player)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        return true
    end

    function GetMoney(player)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        return Player.Functions.GetMoney("cash")
    end

    function TryPayment(player, amount)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        return Player.Functions.RemoveMoney("cash", amount, "slotmachine_bet")
    end

    function GiveMoney(player, amount)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return end

        Player.Functions.AddMoney("cash", amount, "slotmachine_win")
    end
elseif Config.Framework == "ESX" then
    ESX = exports["es_extended"]:getSharedObject()

    function GetUserId(player)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then return false end

        return xPlayer.identifier
    end

    function isAdmin(player)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then return false end

        return xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "superadmin"
    end

    function CheckConditions(player)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then return false end

        return true
    end

    function GetMoney(player)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then return false end

        return xPlayer.getMoney()
    end

    function TryPayment(player, amount)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then return false end

        if xPlayer.getMoney() >= amount then
            xPlayer.removeMoney(amount)
            return true
        end

        return false
    end

    function GiveMoney(player, amount)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then return end

        xPlayer.addMoney(amount)
    end
elseif Config.Framework == "QBox" then
    local QBCore = exports['qbx-core']:GetCoreObject()

    function GetUserId(player)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        return Player.PlayerData.citizenid
    end

    function isAdmin(player)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        local group = Player.PlayerData.group or "user"
        return group == "admin" or group == "god"
    end

    function CheckConditions(player)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        return true
    end

    function GetMoney(player)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        return Player.Functions.GetMoney("cash")
    end

    function TryPayment(player, amount)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return false end

        return Player.Functions.RemoveMoney("cash", amount, "slotmachine_bet")
    end

    function GiveMoney(player, amount)
        local Player = QBCore.Functions.GetPlayer(player)
        if not Player then return end

        Player.Functions.AddMoney("cash", amount, "slotmachine_win")
    end
elseif Config.Framework == "Standalone" then
    local playerBalances = {}
    local adminList = {
        ["license:yourlicensehere"] = true,
        ["steam:110000123456789"] = true
    }

    function GetUserId(player)
        return player
    end

    function isAdmin(player)
        local identifiers = GetPlayerIdentifiers(player)
        for _, id in pairs(identifiers) do
            if adminList[id] then return true end
        end

        return false
    end

    function CheckConditions(player)
        -- Your Code
        return true
    end

    function GetMoney(player)
        -- Your Code
        return 0
    end

    function TryPayment(player, amount)
        -- Your Code
        return true
    end

    function GiveMoney(player, amount)
        -- Your Code
    end
end


function Notify(player, text, tType)
    TriggerClientEvent("machiamavlad:slotNotification", player, text, tType)
end

--- @class ResultsSent
--- Keeps track of which players have already received the slot machine positions
local ResultSent = {}

--- Server-side event to handle client requests for slot machine positions
--- @param source number The player requesting the data
RegisterNetEvent("machiamavlad:requestSlotMachinePositions", function()
    local player = source
    if ResultSent[player] then return end
    TriggerClientEvent("machiamavlad:setSlotMachineLocations", player, Config.Positions)
end)

--- This command is used to check the statistics of the slot machine system — how much has been played and how much it has paid out.
RegisterCommand("wager", function(player, args) 
    if isAdmin(player) then
        TriggerClientEvent("chatMessage", player, "^5>> Slot Machine <<^0 paid: " .. formatMoney(serverData.paid) .. "$. (played: " .. formatMoney(serverData.played) .. "$)")
    end
end, false)