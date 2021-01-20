SLASH_CAGC1 = "/CAGC"
local inDebugMode = false
local inDeepDebugMode = false

local isSkinner = false
local isHerber = false
local isMinner = false

local skinningRank = 0
local herbingRank = 0
local minningRank = 0

local skinningLine = 0
local herbingLine = 0
local minningLine = 0

local getProfHasRun = false

--Keep Track of Tooltip text to check if it has updated
local GameTooltipLine1 = nil
local GameTooltipLine2 = nil
local GameTooltipLine3 = nil

local function PrintSkill(skill)
    if skill == "Skinning" then
        print("Skinning: " .. tostring(isSkinner) .. ", Rank: " .. skinningRank)
    elseif skill == "Herbalism" then
        print("Herbalism: " .. tostring(isHerber) .. ", Rank: " .. herbingRank)
    elseif skill == "Mining" then
        print("Mining: " .. tostring(isMinner) .. ", Rank: " .. minningRank)
    else
        print(skill .. " is not a recgonised skill. Please use Skinning, Herbalism or Mining")
    end
end

local function GetProf()
    local numSkills = GetNumSkillLines()
    for i = 1, numSkills do
        local skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription = GetSkillLineInfo(i)
            if (skillName == "Skinning") then
                isSkinner = true
                skinningRank = skillRank
                skinningLine = i
            end
            if (skillName == "Herbalism") then
                isHerber = true
                herbingRank = skillRank
                herbingLine = i
            end
            if (skillName == "Mining") then
                isMinner = true
                minningRank = skillRank
                minningLine = i
            end
            if (string.len(skillName) > 0 and inDeepDebugMode) then
                print(skillName)
            end
    end

    if inDebugMode then
        PrintSkill("Skinning")
        PrintSkill("Herbalism")
        PrintSkill("Mining")
    end

    getProfHasRun = true
end

local function UpdateSkill(skill)
    if skill == "Skinning" and isSkinner then
        local skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription = GetSkillLineInfo(skinningLine)
        skinningRank = skillRank
    elseif skill == "Herbalism" and isHerber then
        local skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription = GetSkillLineInfo(herbingLine)
        herbingRank = skillRank
    elseif skill == "Mining" and isMinner then
        local skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription = GetSkillLineInfo(minningLine)
        miningRank = skillRank
    end
end

local function CAGCHandler(parameter)

    local setName

    if(string.len(parameter) > 0) then
        if (parameter == "GetProf") then
            GetProf()
        else
            UpdateSkill(parameter)
            PrintSkill(parameter)
        end
    else
        print("No Set Name was Specified")
        print(EquipedSet())
    end

    if (inDebugMode) then
        print("The Parameter was: " .. parameter)
    end
end

local function SkinningRankNeeded(level)
    local rankNeeded
    if (level <= 10) then
        rankNeeded = 1
    elseif (level <= 20) then
        rankNeeded = (10 * level) - 100
    else
        rankNeeded = 5 * level
    end

    return rankNeeded
end

local function HerbalismRankNeeded(herb)
    local rankNeeded
    if (herb == "Peacebloom") then
        rankNeeded = 1
    elseif (herb == "Silverleaf") then
        rankNeeded = 1
    elseif (herb == "Earthroot") then
        rankNeeded = 15
    elseif (herb == "Mageroyal") then
        rankNeeded = 50
    elseif (herb == "Briarthorn") then
        rankNeeded = 70
    elseif (herb == "Stranglekelp") then
        rankNeeded = 85
    elseif (herb == "Bruiseweed") then
        rankNeeded = 100
    elseif (herb == "Wild Steelbloom") then
        rankNeeded = 115
    elseif (herb == "Grave Moss") then
        rankNeeded = 120
    elseif (herb == "Kingsblood") then
        rankNeeded = 125
    elseif (herb == "Liferoot") then
        rankNeeded = 150
    elseif (herb == "Fadeleaf") then
        rankNeeded = 160
    elseif (herb == "Goldthorn") then
        rankNeeded = 170
    elseif (herb == "Khadgar's Whisker") then
        rankNeeded = 185
    elseif (herb == "Wintersbite") then
        rankNeeded = 195
    elseif (herb == "Firebloom") then
        rankNeeded = 205
    elseif (herb == "Purple Lotus") then
        rankNeeded = 210
    elseif (herb == "Arthas' Tears") then
        rankNeeded = 220
    elseif (herb == "Sungrass") then
        rankNeeded = 230
    elseif (herb == "Blindweed") then
        rankNeeded = 235
    elseif (herb == "Ghost Mushroom") then
        rankNeeded = 245
    elseif (herb == "Gromsblood") then
        rankNeeded = 250
    elseif (herb == "Golden Sansam") then
        rankNeeded = 260
    elseif (herb == "Dreamfoil") then
        rankNeeded = 270
    elseif (herb == "Mountain Silversage") then
        rankNeeded = 280
    elseif (herb == "Plaguebloom") then
        rankNeeded = 285
    elseif (herb == "Icecap") then
        rankNeeded = 290
    elseif (herb == "Black Lotus") then
        rankNeeded = 300
    elseif (herb == "Felweed") then
        rankNeeded = 300
    elseif (herb == "Dreaming Glory") then
        rankNeeded = 315
    elseif (herb == "Ragveil") then
        rankNeeded = 325
    elseif (herb == "Flame Cap") then
        rankNeeded = 335
    elseif (herb == "Terocone") then
        rankNeeded = 325
    elseif (herb == "Ancient Lichen") then
        rankNeeded = 340
    elseif (herb == "Netherbloom") then
        rankNeeded = 350
    elseif (herb == "Nightmare Vine") then
        rankNeeded = 365
    elseif (herb == "Mana Thistle") then
        rankNeeded = 375
    else
        rankNeeded = 375
    end
    return rankNeeded
end

local function MiningRankNeeded(ore)
    local rankNeeded
    if (ore == "Copper Vein") then
        rankNeeded = 1
    elseif (ore == "Tin Vein") then
        rankNeeded = 65
    elseif (ore == "Silver Vein") then
        rankNeeded = 75
    elseif (ore == "Iron Deposit") then
        rankNeeded = 125
    elseif (ore == "Gold Vein") then
        rankNeeded = 155
    elseif (ore == "Mithril Deposit" or ore == "Ooze Covered Mithril Deposit") then
        rankNeeded = 175
    elseif (ore == "Truesilver Deposit" or ore == "Ooze Covered Truesilver Deposit") then
        rankNeeded = 230
    elseif (ore == "Dark Iron Deposit") then
        rankNeeded = 230
    elseif (ore == "Small Thorium Vein" or ore == "Ooze Covered Thorium Vein") then
        rankNeeded = 245
    elseif (ore == "Rich Thorium Vein" or ore == "Ooze Covered Rich Thorium Vein" or ore == "Hakkari Thorium Vein") then
        rankNeeded = 275
    elseif (ore == "Obsidian Chunk" or ore == "Large Obsidian Chunk") then
        rankNeeded = 305
    elseif (ore == "Fel Iron Deposit") then
        rankNeeded = 275
    elseif (ore == "Nethercite Deposit") then
        rankNeeded = 275
    elseif (ore == "Adamantite Deposit") then
        rankNeeded = 325
    elseif (ore == "Rich Adamantite Deposit") then
        rankNeeded = 350
    elseif (ore == "Khorium Vein") then
        rankNeeded = 375
    elseif (ore == "Ancient Gem Vein") then
        rankNeeded = 375
    else
        rankNeeded = 375
    end
    return rankNeeded
end

local function SkinningHandler()
    if (isSkinner) then
        UpdateSkill("Skinning")
        if(GameTooltipLine3 == "Skinnable" and SkinningRankNeeded(UnitLevel("Mouseover")) > skinningRank) then
            if not (IsSetEquipped("Skinning")) then
                ToggleSet("Skinning")
            end
        else
            if (IsSetEquipped("Skinning")) then
                ToggleSet("Skinning")
            end
        end
    end
end

local function HerbalismHandler()
    if (isHerber) then
        UpdateSkill("Herbalism")
        if(GameTooltipLine2 == "Herbalism" and HerbalismRankNeeded(GameTooltipLine1) > herbingRank) then
            if not (IsSetEquipped("Herbalism")) then
                ToggleSet("Herbalism")
            end
        else
            if (IsSetEquipped("Herbalism")) then
                ToggleSet("Herbalism")
            end
        end
    end
end

local function MiningHandler()
    if (isMinner) then
        UpdateSkill("Mining")
        if(GameTooltipLine2 == "Mining" and MiningRankNeeded(GameTooltipLine1) > minningRank) then
            if not (IsSetEquipped("Mining")) then
                ToggleSet("Mining")
            end
        else
            if (IsSetEquipped("Mining")) then
                ToggleSet("Mining")
            end
        end
    end
end

local function GameTooltipChangeHandler(debugString)
    if not (GameTooltipLine1 == GameTooltipTextLeft1:GetText() and GameTooltipLine2 == GameTooltipTextLeft2:GetText() and GameTooltipLine3 == GameTooltipTextLeft3:GetText()) then
        if (inDebugMode) then
            DEFAULT_CHAT_FRAME:AddMessage(debugString)
        end

        -- update local variables for tooltiptext
        GameTooltipLine1 = GameTooltipTextLeft1:GetText()
        GameTooltipLine2 = GameTooltipTextLeft2:GetText()
        GameTooltipLine3 = GameTooltipTextLeft3:GetText()

        -- Call the Handlers for each Profession
        SkinningHandler()
        HerbalismHandler()
        MiningHandler()
    end
end

-- CreateEvent when GameToolTip Shows
local function ToolTipOnShow()
    if not getProfHasRun then
        GetProf()
    end
    GameTooltipChangeHandler("Tooltip OnShow Event fired!")
end

GameTooltip:HookScript("OnShow", ToolTipOnShow)

-- CreateEvent when GameToolTip Hides
local function ToolTipOnHide()
    GameTooltipChangeHandler("Tooltip OnHide Event fired!")
end

GameTooltip:HookScript("OnHide", ToolTipOnHide)


-- CreateEvent when GameToolTip Update
local function ToolTipOnUpdate()
    GameTooltipChangeHandler("Tooltip OnUpdate Event fired!")
end

GameTooltip:HookScript("OnUpdate", ToolTipOnUpdate)

-- Register slash commands
SlashCmdList["CAGC"] = CAGCHandler;