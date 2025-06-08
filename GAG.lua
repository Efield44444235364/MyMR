print("londing....")
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
getgenv().Script_Mode = "Kaitun_Script"
_G.Settings = {
    SeedsSetting = { -- เมล็ดที่จะให้ซื้อ
        "Bamboo",
        "Carrot",
        "Orange Tulip",
        "Watermelon",
        "Pumpkin",
        "Daffodil",
        "Mushroom",
        "Nightshade",
        "Beanstalk",
    },
    SprinklerSettings = { -- ตั้งค่าสำหรับวางสปิงเกอร์
        Limit = 2,
        StartBuyWhen = 10000000, -- เริ่มซื้อตอนไหน
        SelectSprinklers = { -- ซื้ออะไรบ้าง
            "Basic Sprinkler",
            "Advanced Sprinkler",
            "Master Sprinkler",
            "Godly Sprinkler"
        }
    },
    EggSettings = {
        StartBuyEggWhen = 150000, -- เริ่มซื้อตอนไหน
        SelectEggs = { -- ซื้ออะไรบ้าง
            "Legendary Egg",
            "Mythical Egg",
            "Bug Egg"
        },
    },
    SelectHoneyStocks = { -- ซื้อของอีเว้นท์
        "Hive Fruit",
        "Nectarine",
        "Flower Seed Pack",
        "Bee Egg",
        "Honey Sprinkler"
    },
    DestroySettings = { 
        DestroyWhenMoney = 500000, -- ลบต้นไม้ตอนไหน
        SelectTrees = {"Strawberry", "Blueberry", "Corn", "Tomato"} -- ลบอะไรบ้าง
    },
    Webhook = "", -- ส่งแจ้งเตือน
    PetSettings = {
        Sell = { -- ขายอะไรบ้าง
            "Commom Egg",
            "Uncommon Egg"
        },
        UpgradeSlots = { -- เอาระดับไหนไปส่งเพิ่มสล็อต
            "Commom Egg",
            "Uncommon Egg"
        },
        Equip = { -- วางสัตว์อะไรบ้าง
            "Legendary Egg",
            "Mythical Egg",
            "Bug Egg"
        }
    },
    UpgradePetSlots = 2, -- อัพสล็อตถึงระดับไหน
    SendHoneyMachineQuests = true -- ทำเควสอีเว้นท์
}

getgenv().Key = "MARU-X1CCG-KZTL6-ZXX9-DPMYV-LJZ5"
getgenv().id = "928125661363703858"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
