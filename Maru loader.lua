task.wait(5)

if game.PlaceId == 126884695634066 then
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efield44444235364/MyMR/refs/heads/main/GAG.lua"))()
    end)

    if success then
        print("[ ✅ ] Loaded Grow a Garden script successfully.")
    else
        warn("[ ❌ ] Failed to load Grow a Garden script:", err)
    end
else
    print("[ ℹ️ ] Not in GAG game.")
end
