

if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then

    if game.PlaceId == 2753915549 then
        Old_World = true
    elseif game.PlaceId == 4442272183 then
        New_World = true
    elseif game.PlaceId ==  7449423635 then
        Three_World = true
    end


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/XeNonUi", true))()
library:CreateWatermark("Center Hub No.1") -- Config แตกนะเดียวค่อยแก้รอเน็ตมาก่อน By MeowX#0001
local CenterHubNo1 = library:CreateWindow("XipperX Premium",Enum.KeyCode.RightControl)
local Tab = CenterHubNo1:CreateTab("Main")
local Sector1 = Tab:CreateSector("Main","left")


Sector1:AddLabel("Auto Farm")
Sector1:AddToggle("AutoFarm",false,function(t)
    Xipper["AutoFarm"] = t
end)
Sector1:AddToggle("Fast Attack",false,function(t)
    Xipper["FastAttack"] = t
end)
Sector1:AddToggle("Bring Mob",false,function(t)
    Xipper["BringMob"] = t
end)

-- Weapon Equip

local Sector2 = Tab:CreateSector("Weapon","Right")
Weaponlist = {}
Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end

local dropdoxwn = Sector2:AddDropdown("Select Weapon",Weaponlist,"None",false,function(t)
    Weapon = t
end)

Sector2:AddButton("Refresh Test",function()
    table.clear(Weaponlist)
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    dropdoxwn:Add(v.Name)
    end
end)

Sector2:AddToggle("Auto Equip",false,function(t)
    Xipper["AutoWeapon"] = t
 end)

 spawn(function()
    while wait() do
        if Xipper["AutoWeapon"] then
            pcall(function()
                wait(.5)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
            end)
        end
    end
end)




-- Auto State
local Sector3 = Tab:CreateSector("State","Right")
Statelist = {"Melee","Sword","Defense","Gun","Blox Fruit"}
state = nil

local dropdoxwn = Sector3:AddDropdown("Select State",Statelist,"None",false,function(t)
    state = t
end)


Sector3:AddToggle("Auto State",false,function(t)
    Xipper["AutoState"] = t
 end)
 Sector3:AddSlider("State",1,3,30,1,function(x)
    stat = x
 end)

 spawn(function()
    while wait() do
        if Xipper["AutoState"] then
            pcall(function()
                if state == "Melee" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", stat)
                elseif state == "Sword" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", stat)
                elseif state == "Defense" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", stat)
                elseif state == "Gun"then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", stat)
                elseif state == "Blox fruit"  then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", stat)
                end
            end)
        end
    end
end)





 -- Buy Item
 local Sector5 = Tab:CreateSector("Buy Item","left")
 Itemlist = {"Geppo","Buso","Soru","Ken","Black Leg","Electro","Fishman Karate"}
 Item = nil
 
 local dropdoxwn = Sector5:AddDropdown("Select Item",Itemlist,"None",false,function(t)
     Item = t
 end)
 
 
 Sector5:AddButton("Buy",function()
    if Item == "Geppo" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    elseif Item == "Buso" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    elseif Item == "Soru" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    elseif Item == "Ken" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Ken")
    elseif Item == "Black Leg" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    elseif Item == "Electro" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    elseif Item == "Fishman Karate" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
 end)



 -- Teleport Island

local Tab = CenterHubNo1:CreateTab("Teleport")
local Sector3 = Tab:CreateSector("Main","left")

tablexd = {"StartPirate","StartMarine","Junggle","Pirate Town","Middle","Desert","Frozen","Colossuem","Prison","Magma","Marine2","Sky1","Sky2","Fishman","Fountain"}
island = nil
local dropdoxwn = Sector3:AddDropdown("Select island",tablexd,"None",false,function(t)
    island = t
end)

Sector3:AddButton("teleport",function()
    if island == "StartPirate" then
        tp(CFrame.new(1006.6429443359375, 16.322174072265625, 1423.3201904296875))
    elseif island == "StartMarine" then
        tp(CFrame.new(-2634.9765625, 6.888829708099365, 2072.921875))
    elseif island == "Junggle" then
        tp(CFrame.new(-1295.543212890625, 11.852054595947266, 432.9632568359375))
    elseif island == "Pirate Town" then
        tp(CFrame.new(-1174.8748779296875, 4.75140380859375, 3813.609375))
    elseif island == "Middle" then
        tp(CFrame.new(-747.6849365234375, 7.852256774902344, 1592.662353515625))
    elseif island == "Desert" then
        tp(CFrame.new(904.2191162109375, 6.438475608825684, 4227.05517578125))
    elseif island == "Frozen" then
        tp(CFrame.new(1106.630859375, 5.29067325592041, -1150.333251953125))
    elseif island == "Prison" then
        tp(CFrame.new(4860.478515625, 5.652389049530029, 733.8888549804688))
    elseif island == "Colossuem" then
        tp(CFrame.new(-1479.8768310546875, 7.389348983764648, -2925.56005859375))
    elseif island == "Magma" then
        tp(CFrame.new(-5251.16552734375, 8.589862823486328, 8445.3701171875))
    elseif island == "Marine2" then
        tp(CFrame.new(-4928.73095703125, 20.65204429626465, 4252.80126953125))
    elseif island == "Sky1" then
        tp(CFrame.new(-4963.87890625, 717.6864624023438, -2607.3349609375))
    elseif island == "Sky2" then
        tp(CFrame.new(-7878.9404296875, 5545.58154296875, -377.7994689941406))
    elseif island == "Fishman" then
        tp(CFrame.new(3876.954833984375, 5.373158931732178, -1893.9779052734375))
    elseif island == "Fountain" then
        tp(CFrame.new(5208.337890625, 38.50114059448242, 4079.309326171875))
    end
end)

local Sector3 = Tab:CreateSector("Misc","Right")

Sector3:AddButton("Redeem Code",function()
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














-- Sector1:AddDropdown("Multi DropdownText by Centerhub",{"None","IDK","odl2"},"None",true,function(t)
--     print(t)
-- end)
-- Sector1:AddDropdown("DropdownText by Centerhub",{"None","IDK","odl2"},"None",false,function(t)
--     print(t)
-- end)
-- local Dropdownxd = Sector1:AddToggle("Toggle With Dropdown",false,function(t)
--    print(t)
-- end)
-- Dropdownxd:AddDropdown({"None","IDK","odl2"},"None",false,function(t)
--     print(t)
-- end)
-- local Dropdow2nxd = Sector1:AddToggle("Toggle With Dropdown Multi",false,function(t)
--    print(t)
-- end)
-- Dropdow2nxd:AddDropdown({"None","IDK","odl2"},"None",true,function(t)
--     print(t)
-- end)



-- local Sector3 = Tab:CreateSector("SECTOR CENTERHUB 3","Right")
-- Sector3:AddSlider("Slider By Center",20,50,100,1,function(x)
--     print(x)
-- end)
-- local Sector4 = Tab:CreateSector("SECTOR CENTERHUB 4","left")
-- Sector4:AddColorpicker('Color picker',Color3.fromRGB(255, 255, 255),function(t)
--     print(t)
-- end)


-- Sector1:AddButton("BUTTON BY CENTERHUB",function()
--     print("CENTERHUB")
-- end)
getgenv().Xipper = {
    ["AutoFarm"] = false,
    ["FastAttack"] = false,
    ["AutoWeapon"] = false,
    ["BringMob"] = false,
    ["AutoState"] = false
}




function Checklevel()
    local Mylevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Mylevel == 1 or Mylevel < 10 then
        mon = "Bandit [Lv. 5]"
        monname = "Bandit"
        quest = "BanditQuest1"
        questnum = 1
        moncf = CFrame.new(1193.9228515625, 16.703508377075195, 1618.63232421875)
        questcf = CFrame.new(1060.23046875, 16.424299240112305, 1548.1787109375)
    elseif Mylevel == 10 or Mylevel < 15 then
        mon = "Monkey [Lv. 14]"
        monname = "Monkey"
        quest = "JungleQuest"
        questnum = 1
        moncf = CFrame.new(-1551.8880615234375, 22.852102279663086, 30.492643356323242)
        questcf = CFrame.new(-1599.898681640625, 36.85213851928711, 152.93234252929688)
    elseif Mylevel == 15 or Mylevel < 30 then
        mon = "Gorilla [Lv. 20]"
        monname = "Gorilla"
        quest = "JungleQuest"
        questnum = 2
        moncf = CFrame.new(-1272.7689208984375, 6.220486640930176, -509.9761047363281)
        questcf = CFrame.new(-1599.898681640625, 36.85213851928711, 152.93234252929688)
    elseif Mylevel == 30 or Mylevel < 40 then
        mon = "Pirate [Lv. 35]"
        monname = "Pirate"
        quest = "BuggyQuest1"
        questnum = 1
        moncf = CFrame.new(-1208.138671875, 4.752060890197754, 3916.29150390625)
        questcf = CFrame.new(-1141.0999755859375, 4.752061367034912, 3829.993896484375)
    elseif Mylevel == 40 or Mylevel < 60 then
        mon = "Brute [Lv. 45]"
        monname = "Brute"
        quest = "BuggyQuest1"
        questnum = 2
        moncf = CFrame.new(-1048.4010009765625, 14.869885444641113, 4303.21826171875)
        questcf = CFrame.new(-1141.0999755859375, 4.752061367034912, 3829.993896484375)
    elseif  Mylevel == 60 or Mylevel < 75 then
        mon = "Desert Bandit [Lv. 60]"
        monname = "Desert Bandit"
        quest = "DesertQuest"
        questnum = 1
        moncf = CFrame.new(933.5277099609375, 6.450352191925049, 4486.57421875)
        questcf = CFrame.new(895.6196899414062, 6.438474178314209, 4390.654296875)
    elseif Mylevel == 74 or Mylevel < 90 then
        mon = "Desert Officer [Lv. 70]"
        monname = "Desert Officer"
        quest = "DesertQuest"
        questnum = 2
        moncf = CFrame.new(1616.0458984375, 1.6109663248062134, 4371.07861328125)
        questcf = CFrame.new(895.6196899414062, 6.438474178314209, 4390.654296875)
    elseif Mylevel == 90 or Mylevel < 100  then
        mon = "Snow Bandit [Lv. 90]"
        monname = "Snow Bandit"
        quest = "SnowQuest"
        questnum = 1
        moncf = CFrame.new(1283.1610107421875, 87.27277374267578, -1372.334228515625)
        questcf = CFrame.new(1388.1300048828125, 87.27277374267578, -1298.7183837890625)
    elseif Mylevel == 100 or Mylevel < 120 then
        mon = "Snowman [Lv. 100]"
        monname = "Snowman"
        quest = "SnowQuest"
        questnum = 2
        moncf = CFrame.new(1197.00927734375, 105.77465057373047, -1450.333251953125)
        questcf = CFrame.new(1388.1300048828125, 87.27277374267578, -1298.7183837890625)
    elseif Mylevel == 120 or Mylevel < 150 then
        mon = "Chief Petty Officer [Lv. 120]"
        monname = "Chief Petty Officer"
        quest = "MarineQuest2"
        questnum = 1
        moncf = CFrame.new(-4904.9111328125, 20.65204620361328, 4006.64599609375)
        questcf = CFrame.new(-5037.26171875, 28.65204429626465, 4325.14697265625)
    elseif Mylevel == 150 or Mylevel < 175 then
        mon = "Sky Bandit [Lv. 150]"
        monname = "Sky Bandit"
        quest = "SkyQuest"
        questnum = 1
        moncf = CFrame.new(-4953.572265625, 295.74420166015625, -2901.180908203125)
        questcf = CFrame.new(-4841.642578125, 717.66943359375, -2620.0849609375)
    elseif Mylevel == 175 or Mylevel < 190 then
        mon = "Dark Master [Lv. 175]"
        monname = "Dark Master"
        quest = "SkyQuest"
        questnum = 2
        moncf = CFrame.new(-5217.27197265625, 421.95819091796875, -2284.451171875)
        questcf = CFrame.new(-4841.642578125, 717.66943359375, -2620.0849609375)
    elseif Mylevel == 190 or Mylevel < 210 then
        mon = "Prisoner [Lv. 190]"
        monname = "Prisoner"
        quest = "PrisonerQuest"
        questnum = 1
        moncf = CFrame.new(5112.376953125, 1.6531072854995728, 480.7666015625)
        questcf = CFrame.new(5308.9052734375, 1.6551309823989868, 474.3874206542969)
    elseif Mylevel == 210 or Mylevel < 250 then
        mon = "Dangerous Prisoner [Lv. 210]"
        monname = "Dangerous Prisoner"
        quest = "PrisonerQuest"
        questnum = 2
        moncf = CFrame.new(5266.46533203125, 1.6535866260528564, 1100.6783447265625)
        questcf = CFrame.new(5308.9052734375, 1.6551309823989868, 474.3874206542969)
    elseif Mylevel == 250 or Mylevel < 300 then
        mon = "Toga Warrior [Lv. 250]"
        monname = "Toga Warrior"
        quest = "ColosseumQuest"
        questnum = 1
        moncf = CFrame.new(-1895.638671875, 7.442557334899902, -2867.07373046875)
        questcf = CFrame.new(-1578.8248291015625, 7.389348983764648, -2985.66845703125)
    elseif Mylevel == 300 or Mylevel < 330 then
        mon = "Military Soldier [Lv. 300]"
        monname = "Military Soldier"
        quest = "MagmaQuest"
        questnum = 1
        moncf = CFrame.new(-5343.62451171875, 49.49746322631836, 8648.4326171875)
        questcf = CFrame.new(-5315.232421875, 12.23680305480957, 8516.3359375)
    elseif Mylevel == 330 or Mylevel < 375 then
        mon = "Military Spy [Lv. 325]"
        monname = "Military Spy"
        quest = "MagmaQuest"
        questnum = 2
        moncf = CFrame.new(-5813.10009765625, 83.71466827392578, 8820.0556640625)
        questcf = CFrame.new(-5315.232421875, 12.23680305480957, 8516.3359375)
    elseif Mylevel == 375 or Mylevel < 400 then
        mon = "Fishman Warrior [Lv. 375]"
        monname = "Fishman Warrior"
        quest = "FishmanQuest"
        questnum = 1
        moncf = CFrame.new(60789.54296875, 18.47164535522461, 1415.9290771484375)
        questcf = CFrame.new(61120.80078125, 18.47164535522461, 1566.8062744140625)
    elseif Mylevel == 400 or Mylevel < 450 then
        mon = "Fishman Commando [Lv. 400]"
        monname = "Fishman Commando"
        quest = "FishmanQuest"
        questnum = 2
        moncf = CFrame.new(61847.5234375, 18.482830047607422, 1405.0374755859375)
        questcf = CFrame.new(61120.80078125, 18.47164535522461, 1566.8062744140625)
    elseif Mylevel == 450 or Mylevel < 475 then
        mon = "God's Guard [Lv. 450]"
        monname = "God's Guard"
        quest = "SkyExp1Quest"
        questnum = 1
        moncf = CFrame.new(-4626.68359375, 849.9027709960938, -1939.40478515625)
        questcf = CFrame.new(-4722.02099609375, 845.2769775390625, -1951.3975830078125)
    elseif Mylevel == 475 or Mylevel < 525 then
        mon = "Shanda [Lv. 475]"
        monname = "Shanda"
        quest = "SkyExp1Quest"
        questnum = 2
        moncf = CFrame.new(-7676.40380859375, 5546.3818359375, -498.7236633300781)
        questcf = CFrame.new(-7860.34814453125, 5545.49169921875, -380.47552490234375)
    elseif Mylevel == 525 or Mylevel < 550 then
        mon = "Royal Squad [Lv. 525]"
        monname = "Royal Squad"
        quest = "SkyExp2Quest"
        questnum = 1
        moncf = CFrame.new(-7666.56591796875, 5606.876953125, -1451.1890869140625)
        questcf = CFrame.new(-7904.75, 5635.96240234375, -1411.7020263671875)
    elseif Mylevel == 550 or Mylevel < 625 then
        mon = "Royal Soldier [Lv. 550]"
        monname = "Royal Soldier"
        quest = "SkyExp2Quest"
        questnum = 2
        moncf = CFrame.new(-7838.26953125, 5622.2802734375, -1778.31396484375)
        questcf = CFrame.new(-7904.75, 5635.96240234375, -1411.7020263671875)
    elseif Mylevel == 625 or Mylevel < 650 then
        mon = "Galley Pirate [Lv. 625]"
        monname = "Galley Pirate"
        quest = "FountainQuest"
        questnum = 1
        moncf = CFrame.new(5552.95263671875, 48.3013801574707, 4001.6123046875)
        questcf = CFrame.new(5258.17578125, 38.50114059448242, 4050.226318359375)
    elseif Mylevel >= 650 then
        mon = "Galley Captain [Lv. 650]"
        monname = "Galley Captain"
        quest = "FountainQuest"
        questnum = 2
        moncf = CFrame.new(5779.65478515625, 115.4326400756836, 4800.38720703125)
        questcf = CFrame.new(5258.17578125, 38.50114059448242, 4050.226318359375)
    end
end








-- Functino auto farm

spawn(function()
    while wait() do
        if Xipper["AutoFarm"] then
            Checklevel()
            pcall(function()
                                if game:GetService("Players").LocalPlayer.Data.Level.Value > 375 then
                                    if game:GetService("Players").LocalPlayer.Data.Level.Value < 450 then
                                        if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value ~= "Fishman" then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.6884765625, 6.736950397491455, -1926.214111328125))
                                        end
                                        wait(.5)
                                        if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Fishman" then
                                            if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Magnitude <= 5000 then
                                                tp(CFrame.new(4014.199462890625, -1.9869835376739502, -1824.7288818359375))
                                            end
                                        end
                                        if game:GetService("Players").LocalPlayer.Data.Level.Value > 450 then
                                            if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == "Fishman" then
                                                wait(10)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TeleportToSpawn")
                                            end
                                        end
                                    end
                                end


                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    wait(2)
                        tp(questcf)
                        if (questcf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",quest,questnum)
                        end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid.JumpPower = 0
                        if v.Name == mon and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                            if v.Humanoid.Health > 0 then
                                repeat wait()
                                    Clicking()
                                        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude/350, Enum.EasingStyle.Linear), {CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,24,0)}):Play()
                                until Xipper["AutoFarm"] == false or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            else
                                tp(moncf)
                            end
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,monname) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                        end
                    end
                end
                    if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                        Xipper["Farmlevel"] = false
                        wait(3)
                        Xipper["Farmlevel"] = true
                    end
                end)
            end
        end
    end)
   

    spawn(function()
        while wait(.2) do
            pcall(function()
                if Xipper["BringMob"] then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        for  i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == mon and v2.Name == mon then
                                v.HumanoidRootPart.CFrame = v2.HumanoidRootPart.CFrame
                                if sethiddenproperty then
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    end                    
                end
            end)
        end
    end)

 -- teleport Island2
 spawn(function ()
    while task.wait() do
        if Xipper["AutoFarm"] then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if not game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("RightLowerArm_BusoLayer1") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                    end
                    tp(moncf)
                    wait(1)
                end
            end)
        end
    end
end)




spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() wait()
        pcall(function()
            if Xipper["AutoFarm"] then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                    setfflag("HumanoidParallelRemoveNoPhysics", "False")
                    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                end

                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == Ms then
                        if v:FindFirstChild("Humanoid") then
                            setfflag("HumanoidParallelRemoveNoPhysics", "False")
                            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                            v.Humanoid:ChangeState(11)
                        end
                    end
                end
            end
        end)
    end)
end)

spawn(function() -- Fast Attack 
                            
    local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)

    CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

    y = debug.getupvalues(CombatFrameworkR)[2]

    spawn(function()

        game:GetService("RunService").RenderStepped:Connect(function()

            if Xipper["AutoFarm"] then

                if typeof(y) == "table" then

                    pcall(function()

                        CameraShaker:Stop()

                        y.activeController.hitboxMagnitude = 60

                        y.activeController.active = false

                    end)

                end

            end

        end)

    end)
end)


spawn(function() -- Fast Attack 
                            
    local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)

    CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

    y = debug.getupvalues(CombatFrameworkR)[2]

    spawn(function()

        game:GetService("RunService").RenderStepped:Connect(function()

            if Xipper["FastAttack"] then

                if typeof(y) == "table" then

                    pcall(function()

                        CameraShaker:Stop()

                        y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)

                        y.activeController.timeToNextAttack = 0

                        y.activeController.hitboxMagnitude = 60

                        y.activeController.active = false

                        y.activeController.timeToNextBlock = 0

                        y.activeController.focusStart = 1655503339.0980349

                        y.activeController.increment = 1

                        y.activeController.blocking = false

                        y.activeController.attacking = false

                        y.activeController.humanoid.AutoRotate = true

                    end)

                end

            end

        end)

    end)
end)






function Clicking()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(0,1,0,1))
end



 -- Player tween
 function tp(CF)
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CF.Position).Magnitude/350, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CF})
    tween:Play()
end
else
    game.Players.LocalPlayer:Kick("Please Blox Fruit!!")
end
