httpserv = game:GetService("HttpService")
hook_url = "" -- put ur webhook here 

responce = syn.request(
{
    Url = hook_url,
    Method = 'POST',
    Headers = {
        ['Content-Type'] = "application/json"
    },
    Body = httpserv:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
           ["title"] = "**Script Executed!**",
           ["description"] = game.Players.LocalPlayer.DisplayName.." has executed it.",
           ["type"] = "rich",
           ["color"] = tonumber(0xffffff),
           ["fields"] = {
               {
                   ["name"] = "Hardware ID:",
                   ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                   ["inline"] = true;
               }
           }
        }}
    })
    }
    )
