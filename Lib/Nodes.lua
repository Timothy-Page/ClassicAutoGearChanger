local addonName, ClassicAutoGearChanger = ...

ClassicAutoGearChanger.herbNodes = {
    -- "NodeName"           = [Required Skill]
    ["Peacebloom"]          = 1,
    ["Silverleaf"]          = 1,
    ["Earthroot"]           = 15,
    ["Mageroyal"]           = 50,
    ["Briarthorn"]          = 70,
    ["Stranglekelp"]        = 85,
    ["Bruiseweed"]          = 100,
    ["Wild Steelbloom"]     = 115,
    ["Grave Moss"]          = 120,
    ["Kingsblood"]          = 125,
    ["Liferoot"]            = 150,
    ["Fadeleaf"]            = 160,
    ["Goldthorn"]           = 170,
    ["Khadgar's Whisker"]   = 185,
    ["Wintersbite"]         = 195,
    ["Firebloom"]           = 205,
    ["Purple Lotus"]        = 210,
    ["Arthas' Tears"]       = 220,
    ["Sungrass"]            = 230,
    ["Blindweed"]           = 235,
    ["Ghost Mushroom"]      = 245,
    ["Gromsblood"]          = 250,
    ["Golden Sansam"]       = 260,
    ["Dreamfoil"]           = 270,
    ["Mountain Silversage"] = 280,
    ["Plaguebloom"]         = 285,
    ["Icecap"]              = 290,
    ["Black Lotus"]         = 300,
    ["Felweed"]             = 300,
    ["Dreaming Glory"]      = 315,
    ["Ragveil"]             = 325,
    ["Flame Cap"]           = 335,
    ["Terocone"]            = 325,
    ["Ancient Lichen"]      = 340,
    ["Netherbloom"]         = 350,
    ["Nightmare Vine"]      = 365,
    ["Mana Thistle"]        = 375,
    ["CatchAll"]            = 375
}

ClassicAutoGearChanger.miningNodes = {
    -- "NodeName"                       = [Required Skill]
    ["Copper Vein"]                     = 1,
    ["Tin Vein"]                        = 65,
    ["Silver Vein"]                     = 75,
    ["Iron Deposit"]                    = 125,
    ["Gold Vein"]                       = 155,
    ["Mithril Deposit"]                 = 175,
    ["Ooze Covered Mithril Deposit"]    = 175,
    ["Truesilver Deposit"]              = 230,
    ["Ooze Covered Truesilver Deposit"] = 230,
    ["Dark Iron Deposit"]               = 230,
    ["Small Thorium Vein"]              = 245,
    ["Ooze Covered Thorium Vein"]       = 245,
    ["Rich Thorium Vein"]               = 275,
    ["Ooze Covered Rich Thorium Vein"]  = 275,
    ["Hakkari Thorium Vein"]            = 275,
    ["Obsidian Chunk"]                  = 305,
    ["Large Obsidian Chunk"]            = 305,
    ["Fel Iron Deposit"]                = 275,
    ["Nethercite Deposit"]              = 275,
    ["Adamantite Deposit"]              = 325,
    ["Rich Adamantite Deposit"]         = 350,
    ["Khorium Vein"]                    = 375,
    ["Ancient Gem Vein"]                = 375,
    ["CatchAll"]                        = 375
}

ClassicAutoGearChanger.fishingNodes = {
    -- "NodeName"                       = {[MinLevel to Fish], Level to garentee catch]}
    ["Floating Wreckage"]               = {required = 1, garentee = 450},
    ["Patch of Elemental Water"]        = {required = 1, garentee = 450},
    ["Floating Debris"]                 = {required = 1, garentee = 450},
    ["Oil Spill"]                       = {required = 1, garentee = 450},
    ["Firefin Snapper School"]          = {required = 1, garentee = 450},
    ["Greater Sagefish School"]         = {required = 1, garentee = 450},
    ["Oily Blackmouth School"]          = {required = 1, garentee = 450},
    ["Sagefish School"]                 = {required = 1, garentee = 450},
    ["School of Deviate Fish"]          = {required = 1, garentee = 450},
    ["Stonescale Eel Swarm"]            = {required = 1, garentee = 450},
    ["Muddy Churning Water"]            = {required = 1, garentee = 450},
    ["Highland Mixed School"]           = {required = 1, garentee = 450},
    ["Pure Water"]                      = {required = 1, garentee = 450},
    ["Bluefish School"]                 = {required = 1, garentee = 450},
    ["Feltail School"]                  = {required = 1, garentee = 450},
    ["Brackish Mixed School"]           = {required = 1, garentee = 450},
    ["Mudfish School"]                  = {required = 1, garentee = 450},
    ["School of Darter"]                = {required = 1, garentee = 450},
    ["Sporefish School"]                = {required = 1, garentee = 450},
    ["Steam Pump Flotsam"]              = {required = 1, garentee = 450},
    ["School of Tastyfish"]             = {required = 1, garentee = 450},
    ["Borean Man O' War School"]        = {required = 1, garentee = 450},
    ["Deep Sea Monsterbelly School"]    = {required = 1, garentee = 450},
    ["Dragonfin Angelfish School"]      = {required = 1, garentee = 450},
    ["Fangtooth Herring School"]        = {required = 1, garentee = 450},
    ["Floating Wreckage Pool"]          = {required = 1, garentee = 450},
    ["Glacial Salmon School"]           = {required = 1, garentee = 450},
    ["Glassfin Minnow School"]          = {required = 1, garentee = 450},
    ["Imperial Manta Ray School"]       = {required = 1, garentee = 450},
    ["Moonglow Cuttlefish School"]      = {required = 1, garentee = 450},
    ["Musselback Sculpin School"]       = {required = 1, garentee = 450},
    ["Nettlefish School"]               = {required = 1, garentee = 450},
    ["Strange Pool"]                    = {required = 1, garentee = 450},
    ["Schooner Wreckage"]               = {required = 1, garentee = 450},
    ["Waterlogged Wreckage Pool"]       = {required = 1, garentee = 450},
    ["Bloodsail Wreckage Pool"]         = {required = 1, garentee = 450},
    ["Mixed Ocean School"]              = {required = 1, garentee = 450},
    ["Lesser Sagefish School"]          = {required = 1, garentee = 450},
    ["Lesser Oily Blackmouth School"]   = {required = 1, garentee = 450},
    ["Sparse Oily Blackmouth School"]   = {required = 1, garentee = 450},
    ["Abundant Oily Blackmouth School"] = {required = 1, garentee = 450},
    ["Teeming Oily Blackmouth School"]  = {required = 1, garentee = 450},
    ["Lesser Firefin Snapper School"]   = {required = 1, garentee = 450},
    ["Sparse Firefin Snapper School"]   = {required = 1, garentee = 450},
    ["Abundant Firefin Snapper School"] = {required = 1, garentee = 450},
    ["Teeming Firefin Snapper School"]  = {required = 1, garentee = 450},
    ["Lesser Floating Debris"]          = {required = 1, garentee = 450},
    ["Sparse Schooner Wreckage"]        = {required = 1, garentee = 450},
    ["Abundant Bloodsail Wreckage"]     = {required = 1, garentee = 450},
    ["Teeming Floating Wreckage"]       = {required = 1, garentee = 450},
    ["Albino Cavefish School"]          = {required = 1, garentee = 450},
    ["Algaefin Rockfish School"]        = {required = 1, garentee = 450},
    ["Blackbelly Mudfish School"]       = {required = 1, garentee = 450},
    ["Fathom Eel Swarm"]                = {required = 1, garentee = 450},
    ["Highland Guppy School"]           = {required = 1, garentee = 450},
    ["Mountain Trout School"]           = {required = 1, garentee = 450},
    ["Pool of Fire"]                    = {required = 1, garentee = 450},
    ["Shipwreck Debris"]                = {required = 1, garentee = 450},
    ["Deepsea Sagefish School"]         = {required = 1, garentee = 450},
    ["Fishing Bobber"]                  = {required = 1, garentee = 450}
}