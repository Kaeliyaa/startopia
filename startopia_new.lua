-- Mission configurations with their unique step sequences
local missionConfigs = {
    -- Standard Data Collection Missions (Teleporter -> Scan -> Teleporter -> Doc)
    ["add_label_with_icon|big|`wsnPilots Data"] = {
        name = "Pilots Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wWarfares Data"] = {
        name = "Warfares Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wStorms Data"] = {
        name = "Storms Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wCollisionsn Data"] = {
        name = "Collision Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wAsteroids Data"] = {
        name = "Asteroid Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wSkeletons Data"] = {
        name = "Skeletons Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wMoon Datas"] = {
        name = "Moon Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wCargo Datas"] = {
        name = "Cargo Datas",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wEnergy Data"] = {
        name = "Energys Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wDevastation Data"] = {
        name = "DevastationDatas",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wRadiation Data"] = {
        name = "Radiations Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wWeapons Data"] = {
        name = "WeaponsDatas",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wDebriss Data"] = {
        name = "Debriss Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wLiterarys Data"] = {
        name = "Literary Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wRelic Data"] = {
        name = "Relic Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wMineral Data"] = {
        name = "Mineral Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wWeird Contraption"] = {
        name = "Weird Contraption",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    
    -- Cleanup Missions (Shield -> Torp -> Shield -> Doc)
    ["add_label_with_icon|big|`wSpace Junk Cleanup"] = {
        name = "Space Junk Cleanup",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Torp, [3] = Shield, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wAsteroid Cleanup"] = {
        name = "Asteroid Cleanup",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Torp, [3] = Shield, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wRadiation Cleanup"] = {
        name = "Radiation Cleanup",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Torp, [3] = Shield, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wRocket Part Cleanup"] = {
        name = "Rocket Parts Cleanup",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Torp, [3] = Shield, [4] = Doc
        }
    },
    
    -- Special Missions with unique patterns
    ["add_label_with_icon|big|`wBoarding Party"] = {
        name = "Boarding Party",
        startAction = Scan,
        steps = {
            [1] = Giga, [2] = Giga
        }
    },
    ["add_label_with_icon|big|`wWindy Days"] = {
        name = "Windy Days",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wSalvage Run"] = {
        name = "Salvage Run",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wA Challenge?!"] = {
        name = "A Challenge?!",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Shield, [3] = Shield, [4] = Shield
        }
    },
    ["add_label_with_icon|big|`wMiner Rescue"] = {
        name = "Miner Rescue",
        startAction = Gala,
        steps = {
            [1] = Drone, [2] = Teleporter, [3] = Scan, [4] = Teleporter, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wTaking Aim"] = {
        name = "Taking Aim",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Giga, [3] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wBad Taste"] = {
        name = "Bad Taste",
        startAction = Teleporter,
        steps = {
            [1] = Dip, [2] = Giga, [3] = Doc
        }
    },
    ["add_label_with_icon|big|`wStuck In The Middle"] = {
        name = "Stuck In The Middle",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = AI, [3] = Dip, [4] = AI
        }
    },
    ["add_label_with_icon|big|`wDaydreamer"] = {
        name = "Daydreamer",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Dip, [3] = Giga
        }
    },
    ["add_label_with_icon|big|`wPlanet of Echoes"] = {
        name = "Planet of Echoes",
        startAction = Drone,
        steps = {
            [1] = Dip, [2] = Teleporter, [3] = Scan, [4] = Giga, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wJunk Punks"] = {
        name = "Junk Punks",
        startAction = AI,
        steps = {
            [1] = Drone, [2] = Torp, [3] = AI
        }
    },
    ["add_label_with_icon|big|`wCryonite Crisis"] = {
        name = "Cryonite Crisis",
        startAction = Teleporter,
        steps = {
            [1] = Scan, [2] = Giga, [3] = Scan, [4] = AI, [5] = AI, [6] = Shield, [7] = Gala, [8] = Doc, [9] = Teleporter
        }
    },
    
    -- Rescue Missions with Medical Component (Teleporter -> Dip -> Meds -> Doc)
    ["add_label_with_icon|big|`wShip Rescue"] = {
        name = "Ship Rescue",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Meds, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wAsteroid Rescue"] = {
        name = "Asteroid Rescue",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Dip, [3] = Meds, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wCargo Ship Rescue"] = {
        name = "Cargo Ship Rescue",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Dip, [3] = Meds, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wMining Colony Rescue"] = {
        name = "Mining Colony Rescue",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Dip, [3] = Meds, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wSpace Station Rescue"] = {
        name = "Space Station Rescue",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Dip, [3] = Meds, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wMoon Rescue"] = {
        name = "Moon Rescue",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Dip, [3] = Meds, [4] = Doc
        }
    },
    
    -- Hunt Missions (Teleporter -> Scan -> Giga -> Teleporter)
    ["add_label_with_icon|big|`wRebel Hunt"] = {
        name = "Rebel Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wBug Hunt"] = {
        name = "Bug Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wSpider Hunt"] = {
        name = "Spider Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wSmuggler Hunt"] = {
        name = "Smuggler Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wXenoid Hunt"] = {
        name = "Xenoid Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wHive Hunt"] = {
        name = "Hive Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wPirate Hunt"] = {
        name = "Pirate Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wRobot Hunt"] = {
        name = "Robot Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wParasite Hunt"] = {
        name = "Parasite Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wGreezak Hunt"] = {
        name = "Greezak Hunt",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter
        }
    },
    
    -- More Special Missions
    ["add_label_with_icon|big|`wSkeleton Crew"] = {
        name = "Skeleton Crew",
        startAction = Teleporter,
        steps = {
            [1] = Scan, [2] = AI, [3] = Doc
        }
    },
    ["add_label_with_icon|big|`wGhost Ship"] = {
        name = "Ghost Ship",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Dip, [4] = Doc, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wPit o' Trouble"] = {
        name = "Pit o' Trouble",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Teleporter, [5] = Torp
        }
    },
    ["add_label_with_icon|big|`wClose Encounter"] = {
        name = "Close Encounter",
        startAction = Drone,
        steps = {
            [1] = AI, [2] = Dip, [3] = Dip, [4] = Scan, [5] = AI
        }
    },
    ["add_label_with_icon|big|`wEscape Pod"] = {
        name = "Escape Pod",
        startAction = Meds,
        steps = {
            [1] = Drone, [2] = Shield, [3] = Teleporter, [4] = Scan, [5] = Giga, [6] = Meds, [7] = Scan, [8] = Teleporter, [9] = Torp
        }
    },
    ["add_label_with_icon|big|`wPrevent War"] = {
        name = "Prevent War",
        startAction = Shield,
        steps = {
            [1] = Drone, [2] = Dip, [3] = Teleporter, [4] = Doc, [5] = Gala, [6] = Sup
        }
    },
    
    -- Alternative Data Mission Names (same pattern as standard data missions)
    ["add_label_with_icon|big|`wPilot Data"] = {
        name = "Pilot Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wWarfare Data"] = {
        name = "Warfare Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wStorm Data"] = {
        name = "Storm Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wCollision Data"] = {
        name = "Collision Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wAsteroid Data"] = {
        name = "Asteroid Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wSkeleton Data"] = {
        name = "Skeleton Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wMoon Data"] = {
        name = "Moon Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wCargo Data"] = {
        name = "Cargo Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wEnergy Data"] = {
        name = "Energy Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wDevastation Data"] = {
        name = "Devastation Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wRadiation Data"] = {
        name = "Radiation Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    
    -- Additional Data Missions
    ["add_label_with_icon|big|`wWeapons Data"] = {
        name = "Weapons Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wDebris Data"] = {
        name = "Debris Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wLiterary Data"] = {
        name = "Literary Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wWarp Data"] = {
        name = "Warp Data",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Teleporter, [4] = Doc
        }
    },
    
    -- Attack Missions
    ["add_label_with_icon|big|`wStarachnid Attack"] = {
        name = "Starachnid Attack",
        startAction = Drone,
        steps = {
            [1] = Torp, [2] = Sup, [3] = Torp, [4] = Giga
        }
    },
    ["add_label_with_icon|big|`wOutpost Attack"] = {
        name = "Outpost Attack",
        startAction = Drone,
        steps = {
            [1] = Torp, [2] = Dip, [3] = Teleporter, [4] = Doc, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wOne Angry Ship"] = {
        name = "One Angry Ship",
        startAction = Drone,
        steps = {
            [1] = Torp, [2] = Dip, [3] = Teleporter, [4] = Doc, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wDark Ship"] = {
        name = "Dark Ship",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = AI, [3] = Torp, [4] = Torp
        }
    },
    ["add_label_with_icon|big|`wGiant Skeleton"] = {
        name = "Giant Skeleton",
        startAction = Drone,
        steps = {
            [1] = AI, [2] = Shield, [3] = Sup
        }
    },
    
    -- Life Support/Medical Missions
    ["add_label_with_icon|big|`wLife Pod"] = {
        name = "Life Pod",
        startAction = Teleporter,
        steps = {
            [1] = Scan, [2] = Meds, [3] = Sup
        }
    },
    ["add_label_with_icon|big|`wSolar Impact!"] = {
        name = "Solar Impact!",
        startAction = Shield,
        steps = {
            [1] = Gala, [2] = Meds, [3] = AI, [4] = Drone, [5] = Gala, [6] = Meds, [7] = Gala
        }
    },
    
    -- Diplomatic/Investigation Missions
    ["add_label_with_icon|big|`wA Strange One"] = {
        name = "A Strange One",
        startAction = Drone,
        steps = {
            [1] = Dip, [2] = Gala, [3] = AI, [4] = Doc
        }
    },
    ["add_label_with_icon|big|`wAncient Temple"] = {
        name = "Ancient Temple",
        startAction = Drone,
        steps = {
            [1] = Dip, [2] = Sup, [3] = Doc
        }
    },
    ["add_label_with_icon|big|`wExperimental Salvage"] = {
        name = "Experimental Salvage",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Teleporter, [3] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wPlanet Calamity"] = {
        name = "Planet Calamity",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = AI, [3] = Teleporter, [4] = Shield, [5] = Torp, [6] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wShadow Stalkers"] = {
        name = "Shadow Stalkers",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = AI, [4] = Giga, [5] = Teleporter, [6] = Scan, [7] = Teleporter, [8] = Torp
        }
    },
    ["add_label_with_icon|big|`wSet a Course"] = {
        name = "Set a Course",
        startAction = Drone,
        steps = {
            [1] = Doc
        }
    },
    ["add_label_with_icon|big|`wHunter and Prey"] = {
        name = "Hunter and Prey",
        startAction = Drone,
        steps = {
            [1] = AI, [2] = Teleporter, [3] = Giga, [4] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wTasty Cakes"] = {
        name = "Tasty Cakes",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = AI, [4] = Scan, [5] = Giga, [6] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wDoing The Right Thing!"] = {
        name = "Doing The Right Thing!",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Teleporter, [3] = Giga, [4] = Scan, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wSecret Stash"] = {
        name = "Secret Stash",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Teleporter, [3] = Giga, [4] = Scan, [5] = Teleporter
        }
    },
    
    -- Delivery Missions
    ["add_label_with_icon|big|`wScientific Outpost Delivery"] = {
        name = "Scientific Outpost Delivery",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Sup, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wMissile Base Delivery"] = {
        name = "Missile Base Delivery",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Sup, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wMining Colony Delivery"] = {
        name = "Mining Colony Delivery",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Sup, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wMoon Base Delivery"] = {
        name = "Moon Base Delivery",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Sup, [5] = Teleporter
        }
    },
    
    -- Investigation/Complex Missions
    ["add_label_with_icon|big|`wWho's There"] = {
        name = "Who's There?",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = AI, [4] = Scan, [5] = Giga, [6] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wShe's Gonna Blow"] = {
        name = "She's Gonna Blow!",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = AI, [4] = Scan, [5] = Giga
        }
    },
    
    -- Additional Complex Missions
    ["add_label_with_icon|big|`wGrowlactus"] = {
        name = "Growlactus",
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Torp, [3] = Dip, [4] = Giga, [5] = AI, [6] = Teleporter, [7] = Scan, [8] = Giga, [9] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wPutting Down Roots"] = {
        name = "Putting Down Roots",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Dip, [4] = Doc, [5] = Sup
        }
    },
    ["add_label_with_icon|big|`wA Tasty Bite"] = {
        name = "A Tasty Bite",
        startAction = Drone,
        steps = {
            [1] = Dip, [2] = Gala, [3] = Scan, [4] = AI, [5] = Gala, [6] = Torp
        }
    },
    ["add_label_with_icon|big|`wSpace Detective"] = {
        name = "Space Detective",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Doc, [3] = Torp
        }
    },
    ["add_label_with_icon|big|`wDoctor In The House!"] = {
        name = "Doctor In The House!",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Dip, [3] = Meds, [4] = Giga, [5] = Dip
        }
    },
    ["add_label_with_icon|big|`wGross Mistake"] = {
        name = "Gross Mistake",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Giga, [4] = Sup, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wBlackout"] = {
        name = "Blackout",
        startAction = Gala,
        steps = {
            [1] = Drone, [2] = Shield, [3] = Torp, [4] = Torp, [5] = Gala
        }
    },
    ["add_label_with_icon|big|`wLonely Little Droid"] = {
        name = "Lonely Little Droid",
        startAction = Dip,
        steps = {
            [1] = Teleporter, [2] = Sup, [3] = Scan, [4] = Giga
        }
    },
    ["add_label_with_icon|big|`wDoing The Job!"] = {
        name = "Doing The Job!",
        startAction = Drone,
        steps = {
            [1] = Dip, [2] = Teleporter, [3] = Sup, [4] = Doc, [5] = Teleporter
        }
    },
    ["add_label_with_icon|big|`wSpace Opera"] = {
        name = "Space Opera",
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Dip, [3] = Dip, [4] = Giga, [5] = Doc
        }
    },
    ["add_label_with_icon|big|`wA New Home"] = {
        name = "A New Home",
        startAction = Drone,
        steps = {
            [1] = Dip, [2] = Torp, [3] = Dip, [4] = Sup, [5] = Meds, [6] = Shield, [7] = Torp, [8] = Dip
        }
    }
}

-- External Missions & Encounters (random events requiring specific tools)
local externalEncounters = {
    -- Diplomatic Issues
    {
        triggers = {"Grumpy Ambassador", "Your communicators burst into life! It's your mother! Wow!"},
        tool = Dip,
        name = "Diplomatic Issue"
    },
    
    -- Computer/AI Problems
    {
        triggers = {"Pirate are hacking our computer systems!", "Star Command are not happy! All they see are the popups when they hail you!"},
        tool = AI,
        name = "Computer System Issue"
    },
    
    -- Radiation Leaks
    {
        triggers = {"The reactor's leaking radiation!"},
        tool = Meds,
        name = "Radiation Leak"
    },
    
    -- Document Issues
    {
        triggers = {"Misfiled documents", "Contacted by a bureaucrat from Laymtak II"},
        tool = Doc,
        name = "Documentation Issue"
    },
    
    -- Combat/Torpedo Issues
    {
        triggers = {"A wing of pirate ships swoops in from above!", "Grinding sound coming from outside", "Your ship engineer is urgently requesting a test fire of the Torpedoes"},
        tool = Torp,
        name = "Combat Situation"
    },
    
    -- Shield Problems
    {
        triggers = {"Silicoid Worms attached themselves to our shields!", "Shield Generator still fluctuating", "Space Debris"},
        tool = Shield,
        name = "Shield Malfunction"
    },
    
    -- Hostile Creatures/Crew Issues
    {
        triggers = {"Rabid space dogs", "Disloyal crew", "Space snakes attack"},
        tool = Giga,
        name = "Hostile Encounter"
    },
    
    -- Ship System Failures
    {
        triggers = {"The main cargo door isn't opening", "One of the crew looks out of the window and notices that the left engine is almost hanging off!", 
                   "The lights throughout the ship are failing. It's getting really dark and hard to see", 
                   "Oh dear! It looks like some of the ship's plumbing isn't working", 
                   "We're still losing pressure to that oxygen leak! The effects on our crew are getting worse!"},
        tool = Gala,
        name = "Ship System Failure"
    },
    
    -- Supply/Reputation Issues
    {
        triggers = {"The refugees of the local starvation crisis are blaming us for it! It's not our fault, but it's damaging our reputation, all the same!"},
        tool = Sup,
        name = "Supply Crisis"
    }
}

-- Handle external encounters
local function handleExternalEncounters(message)
    for _, encounter in ipairs(externalEncounters) do
        for _, trigger in ipairs(encounter.triggers) do
            if message:find(trigger, 1, true) then -- plain text search
                logToConsole("`b[`9ENCOUNTER`b] `6" .. encounter.name)
                encounter.tool()
                return true
            end
        end
    end
    return false
end

-- Pattern-based mission handlers for dynamic mission names
local patternMissions = {
    {
        pattern = "add_label_with_icon|big|`w(%w+) Attack!",
        name = function(match) return match .. " Attack!" end,
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Torp, [3] = Torp
        }
    },
    {
        pattern = "add_label_with_icon|big|`w(%w+) Duel",
        name = function(match) return match .. " Duel" end,
        startAction = Drone,
        steps = {
            [1] = Shield, [2] = Torp, [3] = AI, [4] = Torp
        }
    },
    {
        pattern = "add_label_with_icon|big|`w(%w.-) Extermination",
        name = function(match) return match .. " Extermination" end,
        startAction = Drone,
        steps = {
            [1] = Teleporter, [2] = Scan, [3] = Sup, [4] = Giga, [5] = Doc
        }
    }
}

-- Wrap everything in the main hook function
function hook(var)
    -- Skip if not Startopia dialog
    if not (var[0] == "OnDialogRequest" and var[1]:find("end_dialog|startopia") and var[1]:find("Health")) then
        -- Handle other important dialogs
        if var[0] == "OnDialogRequest" then
            if var[1]:find("Starship Helm") then
                logToConsole("`$[`cSTARTING MISSION`$]")
                sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|beginvoyage")
                return true
            elseif var[1]:find("`8Not enough Star Fuel") then
                sendPacket(2, "action|input\n|text|`1check your `4star fuel")
                return true
            elseif var[1]:find("The voyage continues!") then
                sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|finishmission")
                logToConsole("`$[`cSUCCESS`$]")
                step = 0
                Mission = 0
                return true
            elseif var[1]:find("It is a good day to flee!") then
                sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|failmission")
                logToConsole("`$[`4FAIL`$]`4 Wrong Tools? `cPlease Contact Support")
                return true
            end
        elseif var[0] == "OnConsoleMessage" and var[1]:find("`9You received") then
            return false
        end
        return false
    end
local function isReadyToLand()
    local readyTexts = {"I'm Ready!", "I'm Ready", "Im Ready!", "Ready!"}
    for _, text in ipairs(readyTexts) do
        if findText(text) then
            return true
        end
    end
    return false
end

-- Handle mission start
local function handleMissionStart()
    if var[1]:find("Starship Helm") then
        logToConsole("`$[`cSTARTING MISSION`$]")
        sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|beginvoyage")
        return true
    end
    return false
end

-- Handle mission completion and failure
local function handleMissionEnd()
    if var[1]:find("The voyage continues!") then
        sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|finishmission")
        logToConsole("`$[`cSUCCESS`$]")
        step = 0
        Mission = 0
        return true
    elseif var[1]:find("It is a good day to flee!") then
        sendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|failmission")
        logToConsole("`$[`4FAIL`$]`4 Wrong Tools? `cPlease Contact Support")
        return true
    end
    return false
end

-- Handle star fuel check
local function handleStarFuel()
    if var[1]:find("`8Not enough Star Fuel") then
        sendPacket(2, "action|input\n|text|`1check your `4star fuel")
        return true
    end
    return false
end

-- Priority checks first
if isReadyToLand() then
    logToConsole("`b[`9STARTOPIA`b] `2READY TO LAND! All automation stopped.")
    logToConsole("`b[`9STARTOPIA`b] `6You can now choose to land on the planet!")
    return true
end

-- Handle mission lifecycle
if handleMissionStart() then return true end
if handleMissionEnd() then return true end
if handleStarFuel() then return true end

-- Main mission detection and handling
for pattern, config in pairs(missionConfigs) do
    if var[1]:find(pattern) then
        return handleMission(config)
    end
end

-- Check for external encounters
if handleExternalEncounters(var[1]) then
    return true
end

-- Check pattern-based missions if no exact match found
return handlePatternMissions(var[1])