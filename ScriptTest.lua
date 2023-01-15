-- game PlaceId = 2753915549 or 4442272183 or 7449423635

-- local ts = game:GetService("TeleportService")

-- local p = game:GetService("Players").LocalPlayer

-- ts:Teleport(game.PlaceId, p)



local KEY = _G.Key == "KSHGGS-FKSHCV-IRYDNV" or _G.Key == "JSHFVD-URYDGD-LLFKCM" or _G.Key == "KDNFGD-JSBFSY-IUENSF" or _G.Key == "OINSFG-POFIRN-KDNVVD"
    
    


if KEY then
    if game.PlaceId == 2753915549 or 4442272183 or 7449423635 then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Xipper X Hub", "DarkTheme")
        local Tab = Window:NewTab("AutoFarm")
        local Section = Tab:NewSection("Farm")
        local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
        Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
        
    
        Section:NewToggle("AutoFarm", "", function(a)
            AutoFarm["Farmlevel"] = a
        end)
        Section:NewToggle("Auto World two", "", function(a)
            AutoFarm["AutoNewWorld"] = a
        end)
        Section:NewToggle("FastAttack", "", function(a)
            AutoFarm["FastAttack"] = a
        end)
        
    
        local Tab = Window:NewTab("Auto Item")
        local Section = Tab:NewSection("Section Name")
    
        spawn(function()
    
            Weaponlist = {}
            Weapon = nil
                
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                table.insert(Weaponlist,v.Name)
            end
                
            Section:NewDropdown("Seclect item", "", Weaponlist, function(a)
                Weapon = a
            end)
            
            Section:NewToggle("Auto Equip", "", function(a)
                AutoFarm["WeaponAuto"] = a
            end)
        
        end)
        
        
    
    
        local Tab = Window:NewTab("Auto State")
        local Section = Tab:NewSection("Section Name")
    
        statelist = {"Melee","Sword","Defense","Gun","Blox Fruit"}
        state = nil
    
        Section:NewDropdown("Seclect item", "", statelist, function(a)
            state = a
        end)
    
    
        Section:NewToggle("Auto Equip", "", function(state)
            AutoFarm["AutoState"] = state
        end)
    
    
    
        local Tab = Window:NewTab("AutoBuy")
        local Section = Tab:NewSection("Section Name")
    
        buylist = {"Geppo","Buso","Soru"}
        buy = nil
    
        Section:NewDropdown("Seclect item", "", buylist, function(a)
            buy = a
        end)
    
        Section:NewButton("Buy", "", function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", buy)
        end)
    
        local Tab = Window:NewTab("Player")
        local Section = Tab:NewSection("Section Player")
    
        Playerr = {}
        Plr = nil
        
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerr,v.Name)
        end
    
        Section:NewDropdown("Seclect", "", Playerr, function(a)
            Plr = a
        end)

        Section:NewButton("Kick", "", function()
            game.Players[Plr]:Kick("BYE NOOB!!")
        end)


        local Tab = Window:NewTab("Settings")
        local Section = Tab:NewSection("Main")
    
        Section:NewButton("Redeem Code", "", function()
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("GAMER_ROBOT_1M")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("GAMERROBOT_YT")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("kittgaming")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2Fer999")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Enyu_is_Pro")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Magicbus")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("JCWK")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Starcodeheo")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Bluxxy")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("BIGNEWS")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("THEGREATACE")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("SUB2GAMERROBOT_EXP1")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2OfficialNoobie")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("StrawHatMaine")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("SUB2NOOBMASTER123")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Sub2Daigrock")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("Axiore")
            wait(0.5)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("TantaiGaming")
        end)
    
        Section:NewKeybind("Toggle Ui", "", Enum.KeyCode.RightControl, function()
            Library:ToggleUI()
        end)
    
    
    
        getgenv().AutoFarm = {
            ["Farmlevel"] = false,
            ["WeaponAuto"] = false,
            ["AutoState"] = false,
            ["FastAttack"] = false,
            ["AutoNewWorld"] = false
        }
    
    
    
        -- functino checklevel
        function Checklevel()
            local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
            if game.PlaceId == 2753915549 then
                if MyLevel == 1 or MyLevel <= 9 then
                    Ms = "Bandit [Lv. 5]"
                    NameMon = "Bandit"
                    NameQuest = "BanditQuest1"
                    LevelQuest = 1
                    CFrameMon = CFrame.new(1209.84765625, 16.43285369873047, 1618.51708984375)
                    CFrameQuest = CFrame.new(1059.938232421875, 16.362747192382812, 1548.8240966796875)
                elseif MyLevel == 10 or MyLevel <= 14 then
                    Ms = "Monkey [Lv. 14]"
                    NameMon = "Monkey"
                    NameQuest = "JungleQuest"
                    LevelQuest = 1
                    CFrameMon = CFrame.new(-1599.5389404296875, 15.852104187011719, 85.33750915527344)
                    CFrameQuest = CFrame.new(-1596.609375, 36.85213851928711, 149.4842071533203)
                elseif MyLevel == 15 or MyLevel <= 29 then
                    Ms = "Gorilla [Lv. 20]"
                    NameMon = "Gorilla"
                    NameQuest = "JungleQuest"
                    LevelQuest = 2
                    CFrameMon = CFrame.new(-1281.287353515625, 6.220486640930176, -500.0680847167969)
                    CFrameQuest = CFrame.new(-1596.609375, 36.85213851928711, 149.4842071533203)
                elseif MyLevel == 30 or MyLevel <=  39 then
                    Ms = "Pirate [Lv. 35]"
                    NameMon = "Pirate"
                    NameQuest = "BuggyQuest1"
                    LevelQuest = 1
                    CFrameMon = CFrame.new(-1225.421875, 4.777853488922119, 3917.103271484375)
                    CFrameQuest = CFrame.new(-1141.7689208984375, 4.777853488922119, 3829.562744140625)
                elseif MyLevel == 40 or MyLevel <= 59 then
                    Ms = "Brute [Lv. 45]"
                    NameMon = "Brute"
                    NameQuest = "BuggyQuest1"
                    LevelQuest = 2
                    CFrameMon = CFrame.new(-1069.99267578125, 14.835677146911621, 4302.2392578125)
                    CFrameQuest = CFrame.new(-1141.7689208984375, 4.777853488922119, 3829.562744140625)
                elseif MyLevel == 60 or MyLevel <= 74 then
                    Ms = "Desert Bandit [Lv. 60]"
                    NameMon = "Desert Bandit"
                    NameQuest = "DesertQuest"
                    LevelQuest = 1
                    CFrameMon = CFrame.new(931.6926879882812, 6.450431823730469, 4490.34619140625)
                    CFrameQuest = CFrame.new(896.79443359375, 6.438474178314209, 4391.8271484375)
                elseif MyLevel == 75 or MyLevel <= 89 then
                    Ms = "Desert Officer [Lv. 70]"
                    NameMon = "Desert Officer"
                    NameQuest = "DesertQuest"
                    LevelQuest = 2
                    CFrameMon = CFrame.new(1607.697021484375, 9.771275520324707, 4370.73583984375)
                    CFrameQuest = CFrame.new(896.79443359375, 6.438474178314209, 4391.8271484375)
                elseif MyLevel == 90 or MyLevel <= 99 then
                    Ms = "Snow Bandit [Lv. 90]"
                    NameMon = "Snow Bandit"
                    NameQuest = "SnowQuest"
                    LevelQuest = 1
                    CFrameMon = CFrame.new(1294.7200927734375, 87.27277374267578, -1380.6439208984375)
                    CFrameQuest = CFrame.new(1387.896240234375, 87.27277374267578, -1299.7076416015625)
                elseif MyLevel == 100 or MyLevel <= 119 then
                    Ms = "Snowman [Lv. 100]"
                    NameMon = "Snowman"
                    NameQuest = "SnowQuest"
                    LevelQuest = 2
                    CFrameMon = CFrame.new(1152.6964111328125, 105.82967376708984, -1491.8155517578125)
                    CFrameQuest = CFrame.new(1387.896240234375, 87.27277374267578, -1299.7076416015625)
                elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
                    Ms = "Chief Petty Officer [Lv. 120]"
                    NameMon = "Chief Petty Officer"
                    NameQuest = "MarineQuest2"
                    LevelQuest = 1
                    CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
                    CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
                    Ms = "Sky Bandit [Lv. 150]"
                    NameQuest = "SkyQuest"
                    LevelQuest = 1
                    NameMon = "Sky Bandit"
                    CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                    CFrameMon = CFrame.new(-4987.0791015625, 278.0667419433594, -2830.528076171875)
                elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
                    Ms = "Dark Master [Lv. 175]"
                    NameQuest = "SkyQuest"
                    LevelQuest = 2
                    NameMon = "Dark Master"
                    CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                    CFrameMon = CFrame.new(-5262.0224609375, 388.6519470214844, -2262.44775390625)
                elseif MyLevel == 190 or MyLevel <= 209 then
                    Ms = "Prisoner [Lv. 190]"
                    LevelQuest = 1
                    NameQuest = "PrisonerQuest"
                    NameMon = "Prisoner"
                    CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                    CFrameMon = CFrame.new(5180.8369140625, 3.2529242038726807, 422.9814147949219)
                elseif MyLevel == 210 or MyLevel <= 249 then
                    Ms = "Dangerous Prisoner [Lv. 210]"
                    LevelQuest = 2
                    NameQuest = "PrisonerQuest"
                    NameMon = "Dangerous Prisoner"
                    CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                    CFrameMon = CFrame.new(5532.26708984375, 3.5593936443328857, 725.5087280273438)
                elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior
                    Ms = "Toga Warrior [Lv. 250]"
                    NameQuest = "ColosseumQuest"
                    LevelQuest = 1
                    NameMon = "Toga Warrior"
                    CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                    CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
                elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
                    Ms = "Military Soldier [Lv. 300]"
                    NameQuest = "MagmaQuest"
                    LevelQuest = 1
                    NameMon = "Military Soldier"
                    CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                    CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
                    Ms = "Military Spy [Lv. 325]"
                    NameQuest = "MagmaQuest"
                    LevelQuest = 2
                    NameMon = "Military Spy"
                    CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                    CFrameMon = CFrame.new(-5845.2685546875, 77.23064422607422, 8775.40234375)
                elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
                    Ms = "Fishman Warrior [Lv. 375]"
                    NameQuest = "FishmanQuest"
                    LevelQuest = 1
                    NameMon = "Fishman Warrior"
                    CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                    CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
                    Ms = "Fishman Commando [Lv. 400]"
                    NameQuest = "FishmanQuest"
                    LevelQuest = 2
                    NameMon = "Fishman Commando"
                    CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
                    CFrameMon = CFrame.new(61883.4375, 18.482830047607422, 1493.6763916015625)
                elseif MyLevel == 450 or MyLevel <= 474 then 
                    Ms = "God's Guard [Lv. 450]"
                    NameQuest = "SkyExp1Quest"
                    LevelQuest = 1
                    NameMon = "God's Guards"
                    CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
                    CFrameMon = CFrame.new(-4689.119140625, 845.2769775390625, -1895.4578857421875)
                elseif MyLevel == 475 or MyLevel <= 524 then 
                    Ms = "Shanda [Lv. 475]"
                    NameQuest = "SkyExp1Quest"
                    LevelQuest = 2
                    NameMon = "Shandas"
                    CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                    CFrameMon = CFrame.new(-7669.20068359375, 5545.49169921875, -517.9949340820312)
                elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
                    Ms = "Royal Squad [Lv. 525]"
                    NameQuest = "SkyExp2Quest"
                    LevelQuest = 1
                    NameMon = "Royal Squad"
                    CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
                elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
                    Ms = "Royal Soldier [Lv. 550]"
                    NameQuest = "SkyExp2Quest"
                    LevelQuest = 2
                    NameMon = "Royal Soldier"
                    CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    CFrameMon = CFrame.new(-7820.73681640625, 5606.876953125, -1728.6961669921875)
                elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
                    Ms = "Galley Pirate [Lv. 625]"
                    NameQuest = "FountainQuest"
                    LevelQuest = 1
                    NameMon = "Galley Pirate"
                    CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                    CFrameMon = CFrame.new(5494.79638671875, 38.538639068603516, 3992.77294921875)
                elseif MyLevel >= 700 then -- Galley Captain
                    Ms = "Galley Captain [Lv. 650]"
                    NameQuest = "FountainQuest"
                    LevelQuest = 2
                    NameMon = "Galley Captain"
                    CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                    CFrameMon = CFrame.new(5498.7939453125, 47.3275146484375, 4857.3564453125)
                end
            end
            if game.PlaceId == 4442272183 then
                if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
                    Ms = "Raider [Lv. 700]"
                    NameQuest = "Area1Quest"
                    LevelQuest = 1
                    NameMon = "Raider"
                    CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                    CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
                elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
                    Ms = "Mercenary [Lv. 725]"
                    NameQuest = "Area1Quest"
                    LevelQuest = 2
                    NameMon = "Mercenary"
                    CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                    CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
                elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
                    Ms = "Swan Pirate [Lv. 775]"
                    NameQuest = "Area2Quest"
                    LevelQuest = 1
                    NameMon = "Swan Pirate"
                    CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                    CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
                elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
                    Ms = "Factory Staff [Lv. 800]"
                    NameQuest = "Area2Quest"
                    LevelQuest = 2
                    NameMon = "Factory Staff"
                    CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                    CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
                elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
                    Ms = "Marine Lieutenant [Lv. 875]"
                    NameQuest = "MarineQuest3"
                    LevelQuest = 1
                    NameMon = "Marine Lieutenant"
                    CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                    CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
                elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
                    Ms = "Marine Captain [Lv. 900]"
                    NameQuest = "MarineQuest3"
                    LevelQuest = 2
                    NameMon = "Marine Captain"
                    CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                    CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
                elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
                    Ms = "Zombie [Lv. 950]"
                    NameQuest = "ZombieQuest"
                    LevelQuest = 1
                    NameMon = "Zombie"
                    CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                    CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
                elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
                    Ms = "Vampire [Lv. 975]"
                    NameQuest = "ZombieQuest"
                    LevelQuest = 2
                    NameMon = "Vampire"
                    CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                    CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
                elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
                    Ms = "Snow Trooper [Lv. 1000]"
                    NameQuest = "SnowMountainQuest"
                    LevelQuest = 1
                    NameMon = "Snow Trooper"
                    CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                    CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
                elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
                    Ms = "Winter Warrior [Lv. 1050]"
                    NameQuest = "SnowMountainQuest"
                    LevelQuest = 2
                    NameMon = "Winter Warrior"
                    CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                    CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
                elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
                    Ms = "Lab Subordinate [Lv. 1100]"
                    NameQuest = "IceSideQuest"
                    LevelQuest = 1
                    NameMon = "Lab Subordinate"
                    CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                    CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
                    Ms = "Horned Warrior [Lv. 1125]"
                    NameQuest = "IceSideQuest"
                    LevelQuest = 2
                    NameMon = "Horned Warrior"
                    CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                    CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
                elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
                    Ms = "Magma Ninja [Lv. 1175]"
                    NameQuest = "FireSideQuest"
                    LevelQuest = 1
                    NameMon = "Magma Ninja"
                    CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                    CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
                elseif MyLevel == 1200 or MyLevel <= 1249 then 
                    Ms = "Lava Pirate [Lv. 1200]"
                    NameQuest = "FireSideQuest"
                    LevelQuest = 2
                    NameMon = "Lava Pirate"
                    CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                    CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
                elseif MyLevel == 1250 or MyLevel <= 1274 then 
                    Ms = "Ship Deckhand [Lv. 1250]"
                    NameQuest = "ShipQuest1"
                    LevelQuest = 1
                    NameMon = "Ship Deckhand"
                    CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                    CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
                elseif MyLevel == 1275 or MyLevel <= 1299 then 
                    Ms = "Ship Engineer [Lv. 1275]"
                    NameQuest = "ShipQuest1"
                    LevelQuest = 2
                    NameMon = "Ship Engineer"
                    CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                    CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
                elseif MyLevel == 1300 or MyLevel <= 1324 then 
                    Ms = "Ship Steward [Lv. 1300]"
                    NameQuest = "ShipQuest2"
                    LevelQuest = 1
                    NameMon = "Ship Steward"
                    CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                    CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
                elseif MyLevel == 1325 or MyLevel <= 1349 then 
                    Ms = "Ship Officer [Lv. 1325]"
                    NameQuest = "ShipQuest2"
                    LevelQuest = 2
                    NameMon = "Ship Officer"
                    CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                    CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
                elseif MyLevel == 1350 or MyLevel <= 1374 then 
                    Ms = "Arctic Warrior [Lv. 1350]"
                    NameQuest = "FrostQuest"
                    LevelQuest = 1
                    NameMon = "Arctic Warrior"
                    CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                    CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
                elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
                    Ms = "Snow Lurker [Lv. 1375]"
                    NameQuest = "FrostQuest"
                    LevelQuest = 2
                    NameMon = "Snow Lurker"
                    CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                    CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
                elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
                    Ms = "Sea Soldier [Lv. 1425]"
                    NameQuest = "ForgottenQuest"
                    LevelQuest = 1
                    NameMon = "Sea Soldier"
                    CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                    CFrameMon = CFrame.new(-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, 0.407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
                elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
                    Ms = "Water Fighter [Lv. 1450]"
                    NameQuest = "ForgottenQuest"
                    LevelQuest = 2
                    NameMon = "Water Fighter"
                    CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                    CFrameMon = CFrame.new(-3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-08, -0.670276582, 1.69155214e-08, 1, -6.46908234e-08, 0.670276582, 3.66697037e-08, 0.742111444)
                end
            end
        end
        
    
        -- function Check tp Change Island
        function island()
            local level = game:GetService("Players").LocalPlayer.Data.Level.Value
            if game.PlaceId == 2753915549 then
                if level == 10 or level <= 14 then
                    Island = CFrameMon
                elseif level == 15 or level <= 29 then
                    Island = CFrameMon
                elseif level == 30 or level <= 39 then
                    Island = CFrameMon
                elseif level == 40 or level <= 59 then
                    Island = CFrameMon
                elseif level == 60 or level <= 74 then
                    Island = CFrameMon
                elseif level == 75 or level <= 89 then
                    Island = CFrameMon
                elseif level == 89 or level <= 99 then
                    Island = CFrameMon
                elseif level == 100 or level <= 119 then
                    Island = CFrameMon
                elseif level == 120 or level <= 149 then
                    Island = CFrameMon
                elseif level == 150 or level <= 174 then
                    Island = CFrameMon
                elseif level == 175 or level <= 189 then
                    Island = CFrameMon
                elseif level == 190 or level <= 209 then
                    Island = CFrameMon
                elseif level == 210 or level <= 249 then
                    Island = CFrameMon
                elseif level == 250 or level <= 274 then
                    Island = CFrameMon
                elseif level == 275 or level <= 299 then
                    Island = CFrameMon
                elseif level == 300 or level <= 329 then
                    Island = CFrameMon
                elseif level == 330 or level <= 374 then
                    Island = CFrameMon
                elseif level == 375 or level <= 399 then
                    Island = CFrameMon
                    Island2 = CFrame.new(4032.900146484375, 1.9618134498596191, -1809.3026123046875)
                elseif level == 400 or level <= 449 then
                    Island = CFrameMon
                elseif level == 450 or level <= 474 then
                    Island = CFrameMon
                    Island2 = CFrame.new(61179.31640625, 1.677048683166504, 1949.034912109375)
                elseif level == 475 or level <= 524 then
                    Island = CFrameMon
                elseif level == 525 or level <= 549 then
                    Island = CFrameMon
                elseif level == 550 or level <= 624 then
                    Island = CFrameMon
                elseif level == 625 or level <= 649 then
                    Island = CFrameMon
                elseif level >= 700 then
                    Island = CFrameMon
                end
            end
            if game.PlaceId == 4442272183 then
                if level == 700 or level <= 724 then
                    Island = CFrameMon
                elseif level == 725 or level <= 774 then
                    Island = CFrameMon
                elseif level == 775 or level <= 799 then
                    Island = CFrameMon
                elseif level == 800 or level <= 874 then
                    Island = CFrameMon
                elseif level == 875 or level <= 899 then
                    Island = CFrameMon
                elseif level == 900 or level <= 949 then
                    Island = CFrameMon
                elseif level == 950 or level <= 999 then
                    Island = CFrameMon
                elseif level == 1000 or level <= 1049 then
                    Island = CFrameMon
                elseif level == 1050 or level <= 1099 then
                    Island = CFrameMon
                elseif level == 1100 or level <= 1124 then
                    Island = CFrameMon
                elseif level == 1125 or level <= 1174 then
                    Island = CFrameMon
                elseif level == 1175 or level <= 1199 then
                    Island = CFrameMon
                elseif level == 1200 or level <= 1249 then
                    Island = CFrameMon
                elseif level == 1250 or level <= 1274 then
                    Island = CFrameMon
                elseif level == 1275 or level <= 1299 then
                    Island = CFrameMon
                elseif level == 1300 or level <= 1324 then
                    Island = CFrameMon
                elseif level == 1325 or level <= 1349 then
                    Island = CFrameMon
                elseif level == 1350 or level <= 1374 then
                    Island = CFrameMon
                elseif level == 1375 or level <= 1424 then
                    Island = CFrameMon
                elseif level == 1425 or level <= 1449 then
                    Island = CFrameMon
                elseif level == 1450 or level <= 1500 then
                    Island = CFrameMon
                end
            end
        end
    
    
    
    
            -- autoFarm
        spawn(function()
            while task.wait() do
                if AutoFarm["Farmlevel"] then
                        Checklevel()
                        island()
                        pcall(function()
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
        
                            if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
        
                                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 449 then
                                        if not game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Fishman" then
                                            tp(CFrame.new(4032.900146484375, 1.9618134498596191, -1809.3026123046875))
                                            wait(3)
                                        end
                                        tp(CFrame.new(4032.900146484375, 1.9618134498596191, -1809.3026123046875))
                                        wait(2)
                                    end

                                    if game:GetService("Players").LocalPlayer.Data.Level.Value == 450 then
                                        if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Fishman" then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TeleportToSpawn")
                                            wait(5)
                                        end
                                    end
        
                                tp(CFrameQuest)
                                wait(4)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                            end
                                
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                                        if v.Name == Ms then
                                            tp(v.HumanoidRootPart.CFrame * CFrame.new(0,24,0))
                                        end
                                    end
                                end

                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Humanoid.JumpPower = 0
                                        for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == Ms and v2.Name == Ms then
                                                v.HumanoidRootPart.CFrame = v2.HumanoidRootPart.CFrame
                                                v2.Humanoid.WalkSpeed = 0
                                                v2.Humanoid.JumpPower = 0
                                                v2.HumanoidRootPart.CanCollide = false
                                                v2.HumanoidRootPart.CFrame = CFrameMon
                                                if sethiddenproperty then
                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end)
                end
            end
        end)

        spawn(function()
            game:GetService("RunService").Heartbeat:Connect(function()
                if AutoFarm["Farmlevel"] then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                        setfflag("HumanoidParallelRemoveNoPhysics", "False")
                        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                end
            end)
        end)
    

    


    -- teleport Island2
    spawn(function ()
        while task.wait() do
            if AutoFarm["Farmlevel"] then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                        tp(Island * CFrame.new(0,4,0))
                    end
                end)
            end
            wait(10)
        end
    end)
    
    
    
        -- Auto Select item
        spawn(function()
            while wait(1) do
                if AutoFarm["WeaponAuto"] then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
                end
            end
        end)
    
    
        -- Auto State
        spawn(function()
            while wait() do
                if AutoFarm["AutoState"] then
                    pcall(function()
                        if state == "Melee" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 3)
                        elseif state == "Sword" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", 3)
                        elseif state == "Defense" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", 3)
                        elseif state == "Gun"then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", 3)
                        elseif state == "Blox fruit"  then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", 3)
                        end
                    end)
                end
            end
        end)
        
    
    

    
    
    
        spawn(function()
            while wait() do
                if AutoFarm["Farmlevel"] then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value == 375 then
                            if game:GetService("Players").LocalPlayer.Data.Level.Value == 451 then
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    wait(1)
                                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                    wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                    wait(2)
                                    tp(CFrameQuest)
                                    wait(5)
                                end
                            end
                        end
                    end)
                end
            end
        end)
    
    
    
        -- Auto Clicker 
        spawn(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if AutoFarm["Farmlevel"] then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren())do
                                if v.Name == Ms then
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
                                end
                            end
                        end)
                    end
                end
            end)
        end)

    
        spawn(function()
            coroutine.wrap(function()
                local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
                    for v,v in pairs(getreg()) do
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
                             for v,v in pairs(debug.getupvalues(v)) do
                                if typeof(v) == "table" then
                                    spawn(function()
                                        game:GetService("RunService").RenderStepped:Connect(function()
                                            if AutoFarm['Farmlevel'] then
                                                 pcall(function() 
                                                     v.activeController.hitboxMagnitude = 120
                                                 end)
                                             end
                                         end)
                                    end)
                                end
                            end
                        end
                    end
                end)();
            end)


    -- SimulationRaxNerous timeToNextAttack = -(math.huge^math.huge^math.huge)
        spawn(function()
            coroutine.wrap(function()
                local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
                    for v,v in pairs(getreg()) do
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
                             for v,v in pairs(debug.getupvalues(v)) do
                                if typeof(v) == "table" then
                                    spawn(function()
                                        game:GetService("RunService").RenderStepped:Connect(function()
                                            if AutoFarm['FastAttack'] then
                                                 pcall(function()
                                                     v.activeController.timeToNextAttack = 0
                                                     v.activeController.attacking = false
                                                     v.activeController.increment = 4
                                                     v.activeController.blocking = false   
                                                     v.activeController.hitboxMagnitude = 120
                                                     v.activeController.humanoid.AutoRotate = true
                                                     v.activeController.focusStart = 0
                                                     v.activeController.currentAttackTrack = 0
                                                     sethiddenproperty(game:GetService("Players").LocalPlayer, "Fasttacker", math.huge)
                                                 end)
                                             end
                                         end)
                                    end)
                                end
                            end
                        end
                    end
                end)();
            end)
           
           
    

    spawn(function()
        while wait() do 
            if AutoFarm["AutoNewWorld"] then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 then
                        if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") then                 
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress",  "Detective")
                        end
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") then
                            tp(CFrame.new(1347.5673828125, 37.349361419677734, -1325.6558837890625))
                        end
                        if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Ice" then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key"))
                            if game:GetService("Workspace").Map.Ice.Door.CanCollide == false then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                        tp(v.HumanoidRootPart.CFrame * CFrame.new(0,24,0))
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)





    
        -- Player tween
        function tp(CF)
            local tween_s = game:service"TweenService"
            local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CF.Position).Magnitude/250, Enum.EasingStyle.Linear)
            local tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CF})
            tween:Play()
        end
    


    end

    local test = Instance.new("IntValue")
    test.Name = "SunHub"
    test.Parent = game.Players.LocalPlayer
    test.Value = 2

    wait(1)
    local Test = game:GetService("Players").LocalPlayer.SunHub
    Test.Value += 1
    
    if game:GetService("Players").LocalPlayer.SunHub.Value >= 6 then
        game.Players.LocalPlayer:Kick("YOU RUN SCRIPT READY!!")
    end
    
    else
        print("WRONG PASSWORD!!")
        game.Players.LocalPlayer:Kick("WRONG PASSWORD!!")
end


























