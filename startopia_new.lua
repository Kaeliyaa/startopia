-- WORKING STARTOPIA AUTOMATION SCRIPT - SIMPLIFIED VERSION
-- Variables
step = 0
Mission = 0

-- Tool Functions
function Drone()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|drone")
end

function Teleporter()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|teleporter")
end

function Scan()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|scan")
end

function Doc()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|doc")
end

function Shield()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|shield")
end

function Torp()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|torpedo")
end

function Giga()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|giga")
end

function Dip()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|diplomacy")
end

function AI()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|ai")
end

function Meds()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|medical")
end

function Gala()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|galactic")
end

function Sup()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|supplies")
end

-- Mission Configs (simplified)
missionConfigs = {
    -- Data Collection Missions
    ["`wPilots Data"] = { name = "Pilots Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wWarfares Data"] = { name = "Warfares Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wStorms Data"] = { name = "Storms Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wAsteroids Data"] = { name = "Asteroid Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wSkeletons Data"] = { name = "Skeletons Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wMoon Data"] = { name = "Moon Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wCargo Data"] = { name = "Cargo Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wEnergy Data"] = { name = "Energy Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wRadiation Data"] = { name = "Radiation Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wWeapons Data"] = { name = "Weapons Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wDebris Data"] = { name = "Debris Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wRelic Data"] = { name = "Relic Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    ["`wMineral Data"] = { name = "Mineral Data", start = Drone, steps = {Teleporter, Scan, Teleporter, Doc} },
    
    -- Cleanup Missions
    ["`wSpace Junk Cleanup"] = { name = "Space Junk Cleanup", start = Drone, steps = {Shield, Torp, Shield, Doc} },
    ["`wAsteroid Cleanup"] = { name = "Asteroid Cleanup", start = Drone, steps = {Shield, Torp, Shield, Doc} },
    ["`wRadiation Cleanup"] = { name = "Radiation Cleanup", start = Drone, steps = {Shield, Torp, Shield, Doc} },
    
    -- Hunt Missions
    ["`wBug Hunt"] = { name = "Bug Hunt", start = Drone, steps = {Teleporter, Scan, Giga, Teleporter} },
    ["`wPirate Hunt"] = { name = "Pirate Hunt", start = Drone, steps = {Teleporter, Scan, Giga, Teleporter} },
    ["`wRebel Hunt"] = { name = "Rebel Hunt", start = Drone, steps = {Teleporter, Scan, Giga, Teleporter} },
    ["`wSpider Hunt"] = { name = "Spider Hunt", start = Drone, steps = {Teleporter, Scan, Giga, Teleporter} },
    
    -- Rescue Missions
    ["`wShip Rescue"] = { name = "Ship Rescue", start = Drone, steps = {Teleporter, Dip, Meds, Doc} },
    ["`wAsteroid Rescue"] = { name = "Asteroid Rescue", start = Drone, steps = {Teleporter, Dip, Meds, Doc} },
    
    -- Special Missions
    ["`wBoarding Party"] = { name = "Boarding Party", start = Scan, steps = {Giga, Giga} },
    ["`wA Challenge?!"] = { name = "A Challenge?!", start = Drone, steps = {Shield, Shield, Shield, Shield} },
    ["`wMiner Rescue"] = { name = "Miner Rescue", start = Gala, steps = {Drone, Teleporter, Scan, Teleporter, Teleporter} },
    ["`wTaking Aim"] = { name = "Taking Aim", start = Drone, steps = {Teleporter, Giga, Teleporter} },
    ["`wBad Taste"] = { name = "Bad Taste", start = Teleporter, steps = {Dip, Giga, Doc} }
}

-- External Encounters
encounters = {
    ["Grumpy Ambassador"] = Dip,
    ["reactor's leaking radiation"] = Meds,
    ["pirate ships swoops in"] = Torp,
    ["Shield Generator still fluctuating"] = Shield,
    ["Rabid space dogs"] = Giga,
    ["main cargo door isn't opening"] = Gala
}

-- Main Hook Function
function hook(var)
    if var[0] ~= "OnDialogRequest" then return false end
    
    local dialog = var[1]
    
    -- Mission Start
    if dialog:find("Starship Helm") then
        AddToConsole("`2Starting Mission!")
        SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|beginvoyage")
        return true
    end
    
    -- Mission Success
    if dialog:find("The voyage continues!") then
        SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|finishmission")
        AddToConsole("`2Mission Success!")
        step = 0
        Mission = 0
        return true
    end
    
    -- Mission Failed
    if dialog:find("It is a good day to flee!") then
        SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|failmission")
        AddToConsole("`4Mission Failed!")
        step = 0
        Mission = 0
        return true
    end
    
    -- Star Fuel Check
    if dialog:find("Not enough Star Fuel") then
        SendPacket(2, "action|input\n|text|check your star fuel")
        return true
    end
    
    -- Skip if not Startopia dialog
    if not dialog:find("end_dialog|startopia") or not dialog:find("Health") then
        return false
    end
    
    -- Ready to Land Check
    if dialog:find("I'm Ready!") or dialog:find("Ready!") then
        AddToConsole("`2Ready to Land! Automation stopped.")
        return true
    end
    
    -- Check for External Encounters
    for trigger, tool in pairs(encounters) do
        if dialog:find(trigger) then
            AddToConsole("`6External Encounter: " .. trigger)
            tool()
            return true
        end
    end
    
    -- Check for Missions
    for pattern, config in pairs(missionConfigs) do
        if dialog:find(pattern) then
            AddToConsole("`6Starting Mission: " .. config.name)
            Mission = config
            step = 0
            config.start()
            return true
        end
    end
    
    -- Execute Next Step
    if Mission ~= 0 and Mission.steps then
        step = step + 1
        if step <= #Mission.steps then
            AddToConsole("`6Step " .. step .. " of " .. #Mission.steps)
            Mission.steps[step]()
            return true
        end
    end
    
    return false
end

AddToConsole("`2Startopia Script Loaded!")
