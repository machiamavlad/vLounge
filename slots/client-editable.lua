slotMachineOpen = false

-- This callback is called whenever slot machine is opened
-- You can use this to hide your hud for example.
function SlotMacineOnOpen() 
    StartScreenEffect("MenuMGHeistIn", 0, true)
end

-- This callback is called whenever slot machine is closed
function SlotMachineOnClose() 
    StopScreenEffect("MenuMGHeistIn")
    StartScreenEffect("MenuMGHeistOut", 800, false)
end

-- Native subtitle text.
local function NativeText(text, time)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(text)
    DrawSubtitleTimed(time, 1)
end

-- Built-in notification system in HTML, allowing messages to be displayed directyle in the slot machine interface (you can also replace it with your own notification system).
function Notification(text, nType)
    SendNUIMessage{
        action = "notification",
        type = (nType or "neutral"),
        text = text
    }
end

RegisterNetEvent("machiamavlad:slotNotification", Notification)

local SlotMachines = {}
RegisterNetEvent("machiamavlad:setSlotMachineLocations", function(data) 
    SlotMachines = data
end)

-- You can use your own functions(eg. PolyZone) and rewrite this, this is just an example.
Citizen.CreateThread(function()
    local i = 0
    while next(SlotMachines) == nil do 
        Citizen.Wait(2048) 
        TriggerServerEvent("machiamavlad:requestSlotMachinePositions")
        i += 1
        if i > 16 then return end
    end

    if next(SlotMachines) == nil then
        print("^1vSlots:^0 You don't have any slot machine location configured, check ^3(server/config.lua -> Config.Positions)^0.")
        return
    end

    print("^2vSlots:^0", "Successfully loaded ^2" .. #SlotMachines .. " slot machines^0.")

    while true do
        
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local foundNearby = false

        if slotMachineOpen then Citizen.Wait(512) goto skip end

        for k, machine in pairs(SlotMachines) do
            local dist = #(coords - machine.position)
            local drawDist = machine.markerDistance or 10.0
            local openRadius = machine.openRadius or 1.0

            if dist < drawDist then
                foundNearby = true

                DrawMarker(1, machine.position.x, machine.position.y, machine.position.z - 1.0, 
                    0.0, 0.0, 0.0, 
                    0.0, 0.0, 0.0, 
                    0.8, 0.8, 0.8, 
                    0, 255, 0, 150, false, true, 2, false, nil, nil, false)

                if dist < openRadius then
                    NativeText(Config.Lang.pressKey)
                    if IsControlJustPressed(0, 38) then
                        TriggerServerEvent("machiamavlad:openSlotMachine", k)
                        break
                    end
                end
            end
        end

        ::skip::

        if slotMachineOpen then
            Citizen.Wait(128)
        elseif foundNearby then
            Citizen.Wait(1)
        else
            Citizen.Wait(512)
        end
    end
end)
