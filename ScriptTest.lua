

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Sun Hub", "DarkTheme")
    local Tab = Window:NewTab("AutoFarm")
    local Section = Tab:NewSection("Farm")
    local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
    Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}


    Section:NewToggle("AutoFarm", "", function(a)
        AutoFarm["Farmlevel"] = a
        AutoFarm["FastAttack"] = a
    end)

    local Tab = Window:NewTab("Auto Item")
    local Section = Tab:NewSection("Section Name")

    Weaponlist = {}
    Weapon = nil

    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        table.insert(Weaponlist,v.Name)
    end

    Section:NewDropdown("Seclect item", "", Weaponlist, function(a)
        Weapon = a
    end)


    Section:NewToggle("Auto Equip", "", function(state)
        AutoFarm["WeaponAuto"] = state
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




    getgenv().AutoFarm = {
        ["Farmlevel"] = false,
        ["WeaponAuto"] = false,
        ["AutoState"] = false,
        ["FastAttack"] = false,
    }



    -- functino checklevel
    function Checklevel()
        local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
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
            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
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
            CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.916871)
        elseif MyLevel == 450 or MyLevel <= 474 then 
            Ms = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"
            LevelQuest = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
        elseif MyLevel == 475 or MyLevel <= 524 then 
            Ms = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"
            LevelQuest = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973, 0.65171206, 5.11171692e-08, 0.758466363, -4.76232476e-09, 1, -6.33034247e-08, -0.758466363, 3.76435416e-08, 0.65171206)
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
            CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
        elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
            Ms = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"
            LevelQuest = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
        elseif MyLevel >= 650 then -- Galley Captain
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"
            LevelQuest = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
        end
    end

    -- function Check tp Change Island
    function island()
        local level = game:GetService("Players").LocalPlayer.Data.Level.Value
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
            Island2= CFrame.new(4032.900146484375, 1.9618134498596191, -1809.3026123046875)
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
        elseif level >= 650 then
            Island = CFrameMon
        end
    end


        -- autoFarm
    spawn(function()[]
        while task.wait() do
            if AutoFarm["Farmlevel"] then
                Checklevel()
                island()
                pcall(function()
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end

                    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                        tp2(CFrameQuest * CFrame.new(0,0,0))
                        tp(CFrameQuest * CFrame.new(0,4,0))
                        wait(4)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end

                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms then
                                v.HumanoidRootPart.Size = Vector3.new(40,40,40)
                                v.HumanoidRootPart.CanCollide = false
                                for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms or v2.Name == Ms then
                                        v.HumanoidRootPart.CFrame = v2.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CFrame = CFrameMon
                                    end
                                end
                                v.Humanoid.WalkSpeed = 0
                                v.Humanoid.JumpPower = 0
                            end
                        end
                    end
                end)
            end
        end
    end)

-- Teleport Monkey
spawn(function()
    while wait() do
        if AutoFarm["Farmlevel"] then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                        if v.Name == Ms then
                            tp(v.HumanoidRootPart.CFrame * CFrame.new(0,24,0))
                            tp2(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        end
                    end
                end
            end)
        end
    end
end)




    -- Create PArt tween
    spawn(function()
        while wait() do
            if AutoFarm["Farmlevel"] then
                if not game:GetService("Workspace"):FindFirstChild("tween1") then
                    local part = Instance.new("Part")
                    part.Name = "tween1"
                    part.Parent = game:GetService("Workspace")
                    part.Anchored = true
                    part.Transparency = 0
                    part.Size = Vector3.new(7,1,7)
                    part.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-4,0)
                end
            end
        end
    end)

                    


    -- Auto Select item
    spawn(function()
        while wait() do
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
    

    -- teleport island level
    spawn(function ()
        while task.wait() do
            if AutoFarm["Farmlevel"] then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                        tp2(Island)
                        tp(Island)
                        if game:GetService("Players").testterscriptter.Data.Level.Value >= 375 then
                            tp2(Island2)
                            tp(Island2)
                        end
                        wait(5)
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


-- SimulationRaxNerous
       
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
                                            v.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
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
       


    -- Player tween
    function tp(CF)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CF.Position).Magnitude/250, Enum.EasingStyle.Linear)
        local tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CF})
        tween:Play()
    end


    -- Part Tween in TweenInfo
    function tp2(CF)
        if game.workspace:FindFirstChild("tween1") then
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new(0, Enum.EasingStyle.Linear)
        local tween = tween_s:Create(game:GetService("Workspace").tween1, info, {CFrame = CF})
        tween:Play()
        end
    end

