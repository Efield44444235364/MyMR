if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
getgenv().Script_Mode = "Kaitun_Script"

_G.Settings = {
    SeedsSetting = {
        "Bamboo",
        "Carrot",
        "Orange Tulip",
        "Watermelon",
        "Pumpkin",
        "Daffodil",
        "Tomato",
        "Corn",
        "Strawberry",
        "Blueberry",
        "Apple",
        "Coconut",
        "Cactus",
        "Dragon Fruit",
        "Mango",
        "Grape",
        "Mushroom",
        "Pepper",
        "Cacao",
        "Beanstalk",
        "Nightshade",
        "Sunflower",
        "Nectarine",
        "Hive Fruit",
        "Purple Dahlia",
        "Pink Lily",
        "Lilac",
        "Foxglove",
        "Rose",
        "Pineapple",
        "Peach",
        "Raspberry",
        "Pear",
        "Blood Banana",
        "Moon Melon"
    },

    SprinklerSettings = {
        StartBuyWhen = 10000000,
        SelectSprinklers = {
            "Basic Sprinkler",
            "Advanced Sprinkler",
            "Master Sprinkler",
            "Godly Sprinkler"
        }
    },

    EggSettings = {
        StartBuyEggWhen = 150000,
        SelectEggs = {
            "Legendary Egg",
            "Mythical Egg",
            "Bug Egg"
        }
    },

    SelectHoneyStocks = {
        "Hive Fruit",
        "Nectarine",
        "Flower Seed Pack"
    },

    DestroySettings = {
        DestroyWhenMoney = 500000,
        SelectTrees = {
            "Strawberry",
            "Blueberry",
            "Corn",
            "Tomato",
            "Daffodil",
            "Orange Tulip",
            "Sunflower",
            "Mushroom",
            "Pepper"
        }
    },

    Webhook = "",

    PetSettings = {
        Sell = {
            "Commom Egg",
            "Uncommon Egg"
        },
        UpgradeSlots = {
            "Commom Egg",
            "Uncommon Egg"
        },
        Equip = {
            "Legendary Egg",
            "Mythical Egg",
            "Bug Egg"
        }
    },

    UpgradePetSlots = 2,
    SendHoneyMachineQuests = true
}

getgenv().Key = "MARU-X1CCG-KZTL6-ZXX9-DPMYV-LJZ5"
getgenv().id = "928125661363703858"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
