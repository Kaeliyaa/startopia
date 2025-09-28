-- Don't touch it! --
-- Not for sale --
-- Respect the creator! --
-- Thanks to Otan, Monovs, Nightxx
-- Recoded some codes by evilzoldyck
function logTime(satan, satanSleep) 
    logToConsole("[ `4E V I L`` ] `9Script Loading...")
    sendVariant({
      [0] = "OnSetMissionTimer", 
      [1] = satan, 
    })
  sleep(satanSleep)
  sendVariant({[0] = "OnEndMission", }) 
  end
  logTime(3, 3000)
  sendVariant({
  [0] = "OnAddNotification", 
  [2] = "`2DONT SELL THIS SCRIPT!``",
  [3] = "audio/slot_win.wav"}) 
  AddHook("OnTextPacket","CommandList", function(type, str)
if str:find("buttonClicked|yaha") then
sendVariant({
[0] = "OnAddNotification", 
[2] = "Warning from `4System``: You've been `4BANNED`` from `wGrowtopia`` for 60 days",
 [3] = "audio/gong.wav"}) 
  logToConsole("YAHAHAHAHAHHAHAHAHAHAHAHAH") 
return true
end
end)
if true then
    function Drone()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6532")
    lastToolUsed = "Tactical Drone"
end

function Teleporter()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6526")
    lastToolUsed = "Teleporter Charge"
end

function Doc()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6534")
    lastToolUsed = "Stellar Documents"
end

function Scan()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6530")
    lastToolUsed = "Quadriscanner"
end

function Torp()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6540")
    lastToolUsed = "Growton Torpedo"
end

function Dip()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6538")
    lastToolUsed = "Cyborg Diplomat"
end

function Sup()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6536")
    lastToolUsed = "Star Supplies"
end

function Giga()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6528")
    lastToolUsed = "Gigablaster"
end

function Shield()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6518")
    lastToolUsed = "HyperShields"
end

function AI()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6520")
    lastToolUsed = "AI Brain"
end

function Gala()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6522")
    lastToolUsed = "Galactibolt"
end

function Meds()
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6524")
    lastToolUsed = "Space Meds"
end

-- Function to check tool result and display indicator
function checkToolResult(dialog)
    if lastToolUsed ~= "" then
        if dialog:find("Skill Success") then
            toolSuccess = true
            logToConsole("`$[`2RESULT`$] `4" .. lastToolUsed .. " - `2SUCCESS ✓")
            return true
        elseif dialog:find("Skill Fail") then
            toolSuccess = false
            logToConsole("`$[`2RESULT`$] `4" .. lastToolUsed .. " - `4FAILED ✗")
            return true
        end
    end
    return false
end

-- External Encounters Handler
function handleExternalEncounters(dialog)
        -- Diplomatic Issues
        if dialog:find("Grumpy Ambassador") or dialog:find("Your communicators burst into life! It's your mother! Wow!") then
            logToConsole("`b[`9ENCOUNTER`b] `6Diplomatic Issue")
            Dip()
            return true
        end
        
        -- Computer/AI Problems
        if dialog:find("Pirate are hacking our computer systems!") or dialog:find("Star Command are not happy! All they see are the popups when they hail you!") then
            logToConsole("`b[`9ENCOUNTER`b] `6Computer System Issue")
            AI()
            return true
        end
        
        -- Radiation Leaks
        if dialog:find("The reactor's leaking radiation!") then
            logToConsole("`b[`9ENCOUNTER`b] `6Radiation Leak")
            Meds()
            return true
        end
        
        -- Document Issues
        if dialog:find("Misfiled documents") or dialog:find("Contacted by a bureaucrat from Laymtak II") then
            logToConsole("`b[`9ENCOUNTER`b] `6Documentation Issue")
            Doc()
            return true
        end
        
        -- Combat/Torpedo Issues
        if dialog:find("A wing of pirate ships swoops in from above!") or 
           dialog:find("Grinding sound coming from outside") or 
           dialog:find("Your ship engineer is urgently requesting a test fire of the Torpedoes") then
            logToConsole("`b[`9ENCOUNTER`b] `6Combat Situation")
            Torp()
            return true
        end
        
        -- Shield Problems
        if dialog:find("Silicoid Worms attached themselves to our shields!") or 
           dialog:find("Shield Generator still fluctuating") or 
           dialog:find("Space Debris") then
            logToConsole("`b[`9ENCOUNTER`b] `6Shield Malfunction")
            Shield()
            return true
        end
        
        -- Hostile Creatures/Crew Issues
        if dialog:find("Rabid space dogs") or dialog:find("Disloyal crew") or dialog:find("Space snakes attack") then
            logToConsole("`b[`9ENCOUNTER`b] `6Hostile Encounter")
            Giga()
            return true
        end
        
        -- Ship System Failures
        if dialog:find("The main cargo door isn't opening") or 
           dialog:find("One of the crew looks out of the window and notices that the left engine is almost hanging off!") or
           dialog:find("The lights throughout the ship are failing. It's getting really dark and hard to see") or 
           dialog:find("Oh dear! It looks like some of the ship's plumbing isn't working") or
           dialog:find("We're still losing pressure to that oxygen leak! The effects on our crew are getting worse!") then
            logToConsole("`b[`9ENCOUNTER`b] `6Ship System Failure")
            Gala()
            return true
        end
        
        -- Supply/Reputation Issues
        if dialog:find("The refugees of the local starvation crisis are blaming us for it! It's not our fault, but it's damaging our reputation, all the same!") then
            logToConsole("`b[`9ENCOUNTER`b] `6Supply Crisis")
            Sup()
            return true
        end
    end
    
    return false
end
    
function hook(var)
    if var[0] == "OnDialogRequest" and var[1]:find("end_dialog|startopia") and var[1]:find("Health") then

        -- Check encounters FIRST
        if handleExternalEncounters(var[1]) then
            return true
        end
        
        -- Then check tool results
        checkToolResult(var[1])
        
        -- Ready to land check
        if var[1]:find("I'm Ready!") or var[1]:find("Ready!") or var[1]:find("Im Ready!") then
            logToConsole("`b[`9STARTOPIA`b] `2READY TO LAND! All automation stopped.")
            logToConsole("`b[`9STARTOPIA`b] `6You can now choose to land on the planet!")
            return true
        end
            
    if var[1]:find("add_label_with_icon|big|`wsnPilots Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Pilots Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wWarfares Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Warfares Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wStorms Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Storms Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wCollisionsn Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Collision Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wAsteroids Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Asteroid Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wSkeletons Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Skeletons Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wMoon Datas") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Moon Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wCargo Datas") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Cargo Datas")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wEnergy Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Energys Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wDevastation Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6DevastationDatas")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wRadiation Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Radiations Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wWeapons Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6WeaponsDatas")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wDebriss Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Debriss Data")
        end
        Drone()
        return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wLiterarys Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Literary Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wBoarding Party") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 2 then
                Giga()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Scan()
            elseif step == 1 or step == 2 then
                Giga()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Boarding Party")
        end
        Scan()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wWindy Days") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Windy Days")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wA Challenge?!") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 2 or step == 3 or step == 4 then
                Shield()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 2 or step == 3 or step == 4 then
                Shield()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6A Challenge?!")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wMiner Rescue") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Drone()
            elseif step == 2 or step == 4 or step == 5 then
                Teleporter()
            elseif step == 3 then
                Scan()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Gala()
            elseif step == 1 then
                Drone()
            elseif step == 2 or step == 4 or step == 5 then
                Teleporter()
            elseif step == 3 then
                Scan()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Miner Rescue")
        end
        Gala()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wTaking Aim") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Giga()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Giga()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Taking Aim")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wBad Taste") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Dip()
            elseif step == 2 then
                Giga()
            elseif step == 3 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Teleporter()
            elseif step == 1 then
                Dip()
            elseif step == 2 then
                Doc()
            elseif step == 3 then
                Giga()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Bad Taste")
        end
        Teleporter()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wSpace Junk Cleanup") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Space Junk Cleanup")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wAsteroid Cleanup") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Asteroid Cleanup")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wRadiation Cleanup") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Radiation Cleanup")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wRocket Part Cleanup") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Rocket Parts Cleanup")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wStuck in the Middle") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Shield()
            elseif step == 2 or step == 4 then
                AI()
            elseif step == 3 then
                Dip()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Shield()
            elseif step == 2 or step == 4 then
                AI()
            elseif step == 3 then
                Dip()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Stuck In The Middle")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wDaydreamer") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Teleporter()
            elseif step == 2 then
                Dip()
            elseif step == 3 then
                Giga()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Teleporter()
            elseif step == 2 then
                Dip()
            elseif step == 3 then
                Giga()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Daydreamer")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wRelic Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Relic Data")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wMineral Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Mineral Data")
        end
        Drone()
        return true
    end

    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Mineral Data")
end
Drone()
return true

elseif var[1]:find("add_label_with_icon|big|`wWeird Contraption") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Weird Contraption")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wPlanet of Echoes") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Dip()
            elseif step == 2 or step == 5 then
                Teleporter()
            elseif step == 3 then
                Scan()
            elseif step == 4 then
                Giga()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Dip()
            elseif step == 2 or step == 5 then
                Teleporter()
            elseif step == 3 then
                Scan()
            elseif step == 4 then
                Giga()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Planet of Echoes")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wJunk Punks") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Drone()
            elseif step == 2 then
                Torp()
            elseif step == 3 then
                AI()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                AI()
            elseif step == 1 then
                Drone()
            elseif step == 2 then
                Torp()
            elseif step == 3 then
                AI()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Junk Punks")
        end
        AI()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wCryonite Crisis") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Scan()
            elseif step == 2 then
                Giga()
            elseif step == 4 or step == 5 then
                AI()
            elseif step == 6 then
                Shield()
            elseif step == 7 then
                Gala()
            elseif step == 8 then
                Doc()
                if step == 9 then
                    Teleporter()
                end
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 or step == 9 then
                Teleporter()
            elseif step == 1 or step == 3 then
                Scan()
            elseif step == 2 then
                Giga()
            elseif step == 4 or step == 5 then
                AI()
            elseif step == 6 then
                Shield()
            elseif step == 7 then
                Gala()
            elseif step == 8 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Cryonite Crisis")
        end
        Teleporter()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wSalvage Run") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 3 then
                Teleporter()
            elseif step == 2 then
                Scan()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Salvage Run")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wShip Rescue") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 4 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Meds()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 4 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Meds()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Ship Rescue")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wSkeleton Crew") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Scan()
            elseif step == 2 then
                AI()
            elseif step == 3 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Teleporter()
            elseif step == 1 then
                Scan()
            elseif step == 2 then
                AI()
            elseif step == 3 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Skeleton Crew")
        end
        Teleporter()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wGhost Ship") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 5 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Dip()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 5 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Dip()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Ghost Ship")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wPit o' Trouble") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 4 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Giga()
            elseif step == 5 then
                Torp()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 4 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Giga()
            elseif step == 5 then
                Torp()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Pit o' Trouble")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wClose Encounter") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 5 then
                AI()
            elseif step == 2 or step == 3 then
                Dip()
            elseif step == 4 then
                Scan()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 5 then
                AI()
            elseif step == 2 or step == 3 then
                Dip()
            elseif step == 4 then
                Scan()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Close Encounter")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wEscape Pod") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 6 then
                Meds()
            elseif step == 1 then
                Drone()
            elseif step == 4 or step == 7 then
                Scan()
            elseif step == 2 then
                Shield()
            elseif step == 3 or step == 8 then
                Teleporter()
            elseif step == 5 then
                Giga()
            elseif step == 9 then
                Torp()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 or step == 6 then
                Meds()
            elseif step == 1 then
                Drone()
            elseif step == 4 or step == 7 then
                Scan()
            elseif step == 2 then
                Shield()
            elseif step == 3 or step == 8 then
                Teleporter()
            elseif step == 5 then
                Giga()
            elseif step == 9 then
                Torp()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Escape Pod")
        end
        Meds()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wPrevent War") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Drone()
            elseif step == 2 then
                Dip()
            elseif step == 3 then
                Teleporter()
            elseif step == 4 then
                Doc()
            elseif step == 5 then
                Gala()
            elseif step == 6 then
                Sup()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Shield()
            elseif step == 1 then
                Drone()
            elseif step == 2 then
                Dip()
            elseif step == 3 then
                Teleporter()
            elseif step == 4 then
                Doc()
            elseif step == 5 then
                Gala()
            elseif step == 6 then
                Sup()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Prevent War")
        end
        Shield()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wAsteroid Rescue") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Teleporter()
            elseif step == 2 then
                Dip()
            elseif step == 3 then
                Meds()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Teleporter()
            elseif step == 2 then
                Dip()
            elseif step == 3 then
                Meds()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Asteroid Rescue")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wCargo Ship Rescue") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Teleporter()
            elseif step == 2 then
                Dip()
            elseif step == 3 then
                Meds()
            elseif step == 4 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Teleporter()
            elseif step == 2 then
                Dip()
            elseif step == 3 then
                Meds()
            elseif step == 4 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Cargo Ship Rescue")
        end
        Drone()
        return true
    end

    elseif var[1]:find("add_label_with_icon|big|`wMining Colony Rescue") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Teleporter()
    elseif step == 2 then
    Dip()
    elseif step == 3 then
    Meds()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Teleporter()
    elseif step == 2 then
    Dip()
    elseif step == 3 then
    Meds()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Mining Colony Rescue")
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wSpace Station Rescue") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Teleporter()
    elseif step == 2 then
    Dip()
    elseif step == 3 then
    Meds()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Teleporter()
    elseif step == 2 then
    Dip()
    elseif step == 3 then
    Meds()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Space Station Rescue")
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wMoon Rescue") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Teleporter()
    elseif step == 2 then
    Dip()
    elseif step == 3 then
    Meds()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Teleporter()
    elseif step == 2 then
    Dip()
    elseif step == 3 then
    Meds()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Moon Rescue")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wRebel Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Rebel Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wBug Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Bug Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wSpider Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Spider Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wSmuggler Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Smuggler Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wXenoid Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Xenoid Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wHive Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Hive Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wPirate Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Pirate Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wRobot Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Robot Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wParasite Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Parasite Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wGreezak Hunt") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 4 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Greezak Hunt")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wPilot Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Pilot Data")
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wWarfare Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
     else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Warfare Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wStorm Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Storm Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wCollision Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Collision Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wAsteroid Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Asteroid Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wSkeleton Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Skeleton Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wMoon Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Moon Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wCargo Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Cargo Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wEnergy Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Energy Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wDevastation Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Devastation Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wRadiation Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Radiation Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wWeapons Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Weapons Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wDebris Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Debris Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wLiterary Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Literary Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wWarp Data") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Warp Data")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`w(%w+) Attack!") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Shield()
    elseif step == 2 or step == 3 then
    Torp()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Shield()
    elseif step == 2 or step == 3 then
    Torp()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole(
        "`b[`9MISSION`b] `6" .. var[1]:match("add_label_with_icon|big|`w(%w+) Attack!") .. " Attack!")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wStarachnid Attack") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Torp()
    elseif step == 2 then
    Sup()
    elseif step == 4 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Torp()
    elseif step == 2 then
    Sup()
    elseif step == 4 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Starachnid Attack")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wOutpost Attack") or var[1]:find("add_label_with_icon|big|`wOne Angry Ship") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Torp()
    elseif step == 2 then
    Dip()
    elseif step == 3 or step == 5 then
    Teleporter()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Torp()
    elseif step == 2 then
    Dip()
    elseif step == 3 or step == 5 then
    Teleporter()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
    step = 0
    if Mission == 0 then
    if var[1]:find("Outpost Attack") then
    logToConsole("`b[`9MISSION`b] `6Outpost Attack")
    elseif var[1]:find("One Angry Ship") then
    logToConsole("`b[`9MISSION`b] `6One Angry Ship")
    end
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wDark Ship") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Teleporter()
    elseif step == 2 then
    AI()
    elseif step == 3 or step == 4 then
    Torp()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Teleporter()
    elseif step == 2 then
    AI()
    elseif step == 3 or step == 4 then
    Torp()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Dark Ship")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wGiant Skeleton") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    AI()
    elseif step == 2 then
    Shield()
    elseif step == 3 then
    Sup()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    AI()
    elseif step == 2 then
    Shield()
    elseif step == 3 then
    Sup()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Giant Skeleton")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wBoarding Party") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 2 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Scan()
    elseif step == 1 or step == 2 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Boarding Party")
    end
    Scan()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wLife Pod") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Scan()
    elseif step == 2 then
    Meds()
    elseif step == 3 then
    Sup()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Teleporter()
    elseif step == 1 then
    Scan()
    elseif step == 2 then
    Meds()
    elseif step == 3 then
    Sup()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Life Pod")
    end
    Teleporter()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wSolar Impact!") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 5 or step == 7 then
    Gala()
    elseif step == 2 or step == 6 then
    Meds()
    elseif step == 3 then
    AI()
    elseif step == 4 then
    Drone()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Shield()
    elseif step == 1 then
    Gala()
    elseif step == 2 then
    Meds()
    elseif step == 3 then
    AI()
    elseif step == 4 then
    Drone()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Solar Impact!")
    end
    Shield()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wWindy Days") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 then
    Teleporter()
    elseif step == 2 then
    Scan()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Windy Days")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wA Strange One") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Dip()
    elseif step == 2 then
    Gala()
    elseif step == 3 then
    AI()
    elseif step == 4 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Dip()
    elseif step == 2 or step == 6 then
    Gala()
    elseif step == 3 then
    AI()
    elseif step == 4 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6A Strange One")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wAncient Temple") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Dip()
    elseif step == 2 then
    Sup()
    elseif step == 3 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Dip()
    elseif step == 2 then
    Sup()
    elseif step == 3 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Ancient Temple")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wExperimental Salvage") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 2 or step == 3 then
    Teleporter()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 2 or step == 3 then
    Teleporter()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Experimental Salvage")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wMiner Rescue") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Drone()
    elseif step == 2 or step == 4 or step == 5 then
    Teleporter()
    elseif step == 3 then
    Scan()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Gala()
    elseif step == 1 then
    Drone()
    elseif step == 2 or step == 4 or step == 5 then
    Teleporter()
    elseif step == 3 then
    Scan()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Miner Rescue")
    end
    Gala()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wPlanet Calamity") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 3 or step == 6 then
    Teleporter()
    elseif step == 2 then
    AI()
    elseif step == 4 then
    Shield()
    elseif step == 5 then
    Torp()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 3 or step == 6 then
    Teleporter()
    elseif step == 2 then
    AI()
    elseif step == 4 then
    Shield()
    elseif step == 5 then
    Torp()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Planet Calamity")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wShadow Stalkers") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 5 or step == 7 then
    Teleporter()
    elseif step == 2 or step == 6 then
    Scan()
    elseif step == 3 then
    AI()
    elseif step == 4 then
    Giga()
    elseif step == 8 then
    Torp()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 5 or step == 7 then
    Teleporter()
    elseif step == 2 or step == 6 then
    Scan()
    elseif step == 3 then
    AI()
    elseif step == 4 then
    Giga()
    elseif step == 8 then
    Torp()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Shadow Stalkers")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wSet a Course") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Set a Course")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wHunter and Prey") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    AI()
    elseif step == 2 or step == 4 then
    Teleporter()
    elseif step == 3 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    AI()
    elseif step == 2 or step == 4 then
    Teleporter()
    elseif step == 3 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Hunter and Prey")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wTasty Cakes") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 6 then
    Teleporter()
    elseif step == 2 or step == 4 then
    Scan()
    elseif step == 3 then
    AI()
    elseif step == 5 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 6 then
    Teleporter()
    elseif step == 2 or step == 4 then
    Scan()
    elseif step == 3 then
    AI()
    elseif step == 5 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Tasty Cakes")
    end
    Drone()
    return true
    end
elseif var[1]:find("add_label_with_icon|big|`wDoing The Right Thing!") or var[1]:find("add_label_with_icon|big|`wSecret Stash") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Shield()
    elseif step == 2 or step == 5 then
    Teleporter()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Scan()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Shield()
    elseif step == 2 or step == 5 then
    Teleporter()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Scan()
    end
    end
    return true
    else
    step = 0
    if mission == 0 then
    if var[1]:find("|`wDoing The Right Thing!")then
    logToConsole("`b[`9MISSION`b] `6Doing The Right Thing!")
    else
    logToConsole("`b[`9MISSION`b] `6Secret Stash")
    end
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wScientific Outpost Delivery") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 5 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Sup()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 5 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Sup()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Scientific Outpost Delivery")
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wMissile Base Delivery") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 5 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Sup()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 5 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Sup()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Missile Base Delivery")
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wMining Colony Delivery") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 5 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Sup()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 5 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Sup()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Mining Colony Delivery")
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wMoon Base Delivery") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 5 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Sup()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 5 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Giga()
    elseif step == 4 then
    Sup()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Moon Base Delivery")
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`w(%w+) Duel") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Shield()
    elseif step == 2 or step == 4 then
    Torp()
    elseif step == 3 then
    AI()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Shield()
    elseif step == 2 or step == 4 then
    Torp()
    elseif step == 3 then
    AI()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole(
        "`b[`9MISSION`b] `6" .. var[1]:match("add_label_with_icon|big|`w(%w+) Duel") .. " Duel"
    )
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`w(%w.-) Extermination") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Sup()
    elseif step == 4 then
    Giga()
    elseif step == 5 then
    Doc()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 then
    Teleporter()
    elseif step == 2 then
    Scan()
    elseif step == 3 then
    Sup()
    elseif step == 4 then
    Giga()
    elseif step == 5 then
    Doc()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole(
        "`b[`9MISSION`b] `6"
        .. var[1]:match("add_label_with_icon|big|`w(%w.-) Extermination")
        .. " Extermination"
    )
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wWho's there?")
    then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 or step == 6 then
    Teleporter()
    elseif step == 2 or step == 4 then
    Scan()
    elseif step == 3 then
    AI()
    elseif step == 5 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 6 then
    Teleporter()
    elseif step == 2 or step == 4 then
    Scan()
    elseif step == 3 then
    AI()
    elseif step == 5 then
    Giga()
    end
    end
    return true
    else
        step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6Who's There?")
    end
    Drone()
    return true
    end
    elseif var[1]:find("add_label_with_icon|big|`wShe's Gonna Blow")
    then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
    if var[1]:find("Skill Success") then
    step = step + 1
    if step == 1 then
    Teleporter()
    elseif step == 2 or step == 4 then
    Scan()
    elseif step == 3 then
    AI()
    elseif step == 5 then
    Giga()
    end
    elseif var[1]:find("Skill Fail") then
    if step == 0 then
    Drone()
    elseif step == 1 or step == 6 then
    Teleporter()
    elseif step == 2 or step == 4 then
    Scan()
    elseif step == 3 then
    AI()
    elseif step == 5 then
    Giga()
    end
    end
    return true
    else
    step = 0
    if Mission == 0 then
    logToConsole("`b[`9MISSION`b] `6She's Gonna Blow!")
    end
    Drone()
    return true
    end
    -- Add these missing missions before the final end statement:

elseif var[1]:find("add_label_with_icon|big|`wGrowlactus") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 3 then
                Dip()
            elseif step == 4 or step == 8 then
                Giga()
            elseif step == 5 then
                AI()
            elseif step == 6 or step == 9 then
                Teleporter()
            elseif step == 7 then
                Scan()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Shield()
            elseif step == 2 then
                Torp()
            elseif step == 3 then
                Dip()
            elseif step == 4 or step == 8 then
                Giga()
            elseif step == 5 then
                AI()
            elseif step == 6 or step == 9 then
                Teleporter()
            elseif step == 7 then
                Scan()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Growlactus")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wPutting Down Roots") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 4 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Dip()
            elseif step == 5 then
                Doc()
            elseif step == 6 then
                Sup()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 4 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Dip()
            elseif step == 5 then
                Doc()
            elseif step == 6 then
                Sup()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Putting Down Roots")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wA Tasty Bite") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Dip()
            elseif step == 2 or step == 5 then
                Gala()
            elseif step == 3 then
                Scan()
            elseif step == 4 then
                AI()
            elseif step == 6 then
                Torp()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Dip()
            elseif step == 2 or step == 5 then
                Gala()
            elseif step == 3 then
                Scan()
            elseif step == 4 then
                AI()
            elseif step == 6 then
                Torp()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6A Tasty Bite")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wSpace Detective") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Teleporter()
            elseif step == 2 then
                Doc()
            elseif step == 3 then
                Torp()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Teleporter()
            elseif step == 2 then
                Doc()
            elseif step == 3 then
                Torp()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Space Detective")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wDoctor In The House!") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Teleporter()
            elseif step == 2 or step == 5 then
                Dip()
            elseif step == 3 then
                Meds()
            elseif step == 4 then
                Giga()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Teleporter()
            elseif step == 2 or step == 5 then
                Dip()
            elseif step == 3 then
                Meds()
            elseif step == 4 then
                Giga()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Doctor In The House!")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wGross Mistake") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 5 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Giga()
            elseif step == 4 then
                Sup()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 or step == 5 then
                Teleporter()
            elseif step == 2 then
                Scan()
            elseif step == 3 then
                Giga()
            elseif step == 4 then
                Sup()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Gross Mistake")
        end
        Drone()
        return true
    end

elseif var[1]:find("add_label_with_icon|big|`wBlackout") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Drone()
            elseif step == 2 then
                Shield()
            elseif step == 3 or step == 4 then
                Torp()
            elseif step == 5 then
                Gala()  -- Final step
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Gala()  -- Start action
            elseif step == 1 then
                Drone()
            elseif step == 2 then
                Shield()
            elseif step == 3 or step == 4 then
                Torp()
            elseif step == 5 then
                Gala()  -- Retry final step
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Blackout")
        end
        Gala()  -- Start with Gala
        return true
    end
    -- Lonely Little Droid Mission
elseif var[1]:find("add_label_with_icon|big|`wLonely Little Droid") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 or step == 3 or step == 6 then
                Dip()
            elseif step == 2 or step == 4 then
                Teleporter()
            elseif step == 5 then
                Scan()
            elseif step == 7 then
                Giga()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Dip()
            elseif step == 1 or step == 3 or step == 6 then
                Dip()
            elseif step == 2 or step == 4 then
                Teleporter()
            elseif step == 5 then
                Scan()
            elseif step == 7 then
                Giga()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Lonely Little Droid")
        end
        Dip()
        return true
    end

-- Doing The Job! Mission
elseif var[1]:find("add_label_with_icon|big|`wDoing the Job!") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Drone()
            elseif step == 2 or step == 4 or step == 7 then
                Dip()
            elseif step == 3 or step == 8 then
                Teleporter()
            elseif step == 5 then
                Sup()
            elseif step == 6 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Drone()
            elseif step == 2 or step == 4 or step == 7 then
                Dip()
            elseif step == 3 or step == 8 then
                Teleporter()
            elseif step == 5 then
                Sup()
            elseif step == 6 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Doing The Job!")
        end
        Drone()
        return true
    end

-- Space Opera Mission
elseif var[1]:find("add_label_with_icon|big|`wSpace Opera") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Drone()
            elseif step == 2 then
                Teleporter()
            elseif step == 3 or step == 4 then
                Dip()
            elseif step == 5 then
                Giga()
            elseif step == 6 then
                Doc()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Drone()
            elseif step == 2 then
                Teleporter()
            elseif step == 3 or step == 4 then
                Dip()
            elseif step == 5 then
                Giga()
            elseif step == 6 then
                Doc()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6Space Opera")
        end
        Drone()
        return true
    end

-- A New Home Mission
elseif var[1]:find("add_label_with_icon|big|`wA New Home") then
    if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
        if var[1]:find("Skill Success") then
            step = step + 1
            if step == 1 then
                Drone()
            elseif step == 2 or step == 4 or step == 10 then
                Dip()
            elseif step == 3 or step == 9 then
                Torp()
            elseif step == 5 then
                Sup()
            elseif step == 6 then
                Meds()
            elseif step == 7 then
                Shield()
            end
        elseif var[1]:find("Skill Fail") then
            if step == 0 then
                Drone()
            elseif step == 1 then
                Drone()
            elseif step == 2 or step == 4 or step == 10 then
                Dip()
            elseif step == 3 or step == 9 then
                Torp()
            elseif step == 5 then
                Sup()
            elseif step == 6 then
                Meds()
            elseif step == 7 then
                Shield()
            end
        end
        return true
    else
        step = 0
        if Mission == 0 then
            logToConsole("`b[`9MISSION`b] `6A New Home")
        end
        Drone()
        return true
    end
    end

    elseif var[0] == "OnDialogRequest" and var[1]:find("`8Not enough Star Fuel") then
    sendPacket(2, "action|input\n|text|`1check your `4star fuel")
    return true
    elseif var[0] == "OnDialogRequest" and var[1]:find("Starship Helm") then
        logToConsole("`$[`cSTARTING MISSION`$]")
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|beginvoyage")
    return true
    elseif var[0] == "OnDialogRequest" and var[1]:find("It is a good day to flee!") then
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|failmission")
    logToConsole("`$[`4FAIL`$]`4 Wrong Tools? `cPlease Contact `2@evilzoldyck")
    return true
    elseif var[0] == "OnConsoleMessage" and var[1]:find("`9You received") then
    return false
    elseif var[0] == "OnDialogRequest" and var[1]:find("The voyage continues!") then
    sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|finishmission")
    logToConsole("`$[`cSUCCESS`$]")
    step = 0
    Mission = 0
    return true
    elseif var[0] == "OnDialogRequest" and var[1]:find("end_dialog|startopia") then
    return false
    end
    return false
    end
    opening = [[
add_label_with_icon|big|`9S T A R T O P I A GentaHax``|left|7074|
add_textbox|`2Hello`@]]..getLocal().name ..[[`` Thank You For Using This Script :3|
add_smalltext|`2[ - ] Credit : `4EviL - Otan - Monovs - Nightxx``|
add_smalltext|`2[ - ] Some missions might not work because I commented out the code, and not all missions have been added yet. If you found any bugs Please contact `#@evilzoldyck``|
add_smalltext|`2[ - ] `4This Script is Free at `2https://discord.gg/genta7740`` Or check on my `0GitHub `2https://github.com/FwjmHboufoh/meki`` Dont Sell It Nigga.|
add_textbox|`1=====================================================``|left|
add_label_with_icon|small|`^UID : `1]]..getLocal().userId..[[|left|482|
add_label_with_icon|small|`^GENTA UID : `1]]..getDiscordID()..[[|left|482|
add_label_with_icon|small|`^Your Position : `1( ]]..(getLocal().pos.x//32)..[[ - ]]..(getLocal().pos.y//32)..[[ )|left|482|
add_textbox|`1=====================================================``|left|
add_spacer|small|
text_scaling_string|satankontoljzsj|
add_button_with_icon|yaha| `9 FREE DLS HERE!!!|staticYellowFrame|1796||
add_button_with_icon||END_LIST|noflags|0||
add_spacer|small||
end_dialog|stardial||`cEVILGANTENG|
]]
  
var = {}
    var[0] = "OnDialogRequest"
    var[1] = opening
    sendVariant(var)
    var = {}
    var[0] = "OnDialogRequest"
    var[1] = opening
    sendVariant(var)
    sleep(500)
    step = 0
    Mission = 0
    lastToolUsed = ""
    toolSuccess = false
    AddHook("OnVarlist", "hookied", hook)
end















