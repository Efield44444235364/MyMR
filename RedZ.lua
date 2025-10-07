-- ⚙️ Loader Script (Clean + No QueueTeleport)
local _ENV = (getgenv or getrenv or getfenv)()
local BETA_VERSION = BETA_VERSION or _ENV.BETA_VERSION

-- 📜 รายชื่อเกม + ไฟล์สคริปต์
local Scripts = {
    {
        GameId = 994732206, -- Blox Fruits
        UrlPath = if BETA_VERSION then "BLOX-FRUITS-BETA.lua" else "BloxFruits.luau"
    },
    {
        PlacesIds = {10260193230}, -- Meme Sea
        UrlPath = "MemeSea.luau"
    }
}

-- 🌐 ตัวโหลดหลัก
local fetcher, urls = {}, {}

-- 🕒 ป้องกันรันซ้ำใน 5 วินาที
do
    local last_exec = _ENV.rz_execute_debounce
    if last_exec and (tick() - last_exec) <= 5 then
        return nil
    end
    _ENV.rz_execute_debounce = tick()
end

-- 🌍 ตั้งค่า URL
urls.Owner = "https://raw.githubusercontent.com/tlredz/"
urls.Repository = urls.Owner .. "Scripts/refs/heads/main/"
urls.Translator = urls.Repository .. "Translator/"
urls.Utils = urls.Repository .. "Utils/"

-- 💬 ระบบแจ้ง Error
do
    if _ENV.rz_error_message then
        _ENV.rz_error_message:Destroy()
    end

    local identifyexecutor = identifyexecutor or function() return "Unknown" end

    local function CreateMessageError(Text)
        _ENV.loadedFarm = nil
        _ENV.OnFarm = false

        local Message = Instance.new("Message", workspace)
        Message.Text = string.gsub(Text, urls.Owner, "")
        _ENV.rz_error_message = Message

        error(Text, 2)
    end

    local function formatUrl(Url)
        for key, path in urls do
            if Url:find("{" .. key .. "}") then
                return Url:gsub("{" .. key .. "}", path)
            end
        end
        return Url
    end

    function fetcher.get(Url)
        local success, response = pcall(function()
            return game:HttpGet(formatUrl(Url))
        end)

        if success then
            return response
        else
            CreateMessageError(`[1] [{identifyexecutor()}] failed to get http/url/raw: {Url}\n>>{response}<<`)
        end
    end

    function fetcher.load(Url, concat)
        local raw = fetcher.get(Url) .. (concat or "")
        local runFunction, errorText = loadstring(raw)

        if type(runFunction) ~= "function" then
            CreateMessageError(`[2] [{identifyexecutor()}] syntax error: {Url}\n>>{errorText}<<`)
        else
            return runFunction
        end
    end
end

-- 🧩 ตรวจสอบว่าอยู่เกมไหน
local function IsPlace(Script)
    if Script.PlacesIds and table.find(Script.PlacesIds, game.PlaceId) then
        return true
    elseif Script.GameId and Script.GameId == game.GameId then
        return true
    end
    return false
end

-- 🚀 โหลดสคริปต์ตามเกมที่อยู่
for _, Script in Scripts do
    if IsPlace(Script) then
        return fetcher.load("{Repository}Games/" .. Script.UrlPath)(fetcher, ...)
    end
end

-- ❌ ถ้าไม่อยู่ในเกมที่ระบุ
warn("[❌] No supported game found for this loader!")
