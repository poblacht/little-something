local UserInputService = game:GetService("UserInputService")
local Player = {}
Player.__index = Player

function Player.new(plr)
    local self = setmetatable({}, Player)

    self:_setup(plr)

    return self
end

function Player:_setup(plr)
    local leaderstats = Instance.new("Folder", plr) -- Remember to make the player passed through the instance!
    leaderstats.Name = "leaderstats"

    self.createLeaderstat({
        Type = "NumberValue";
        Name = "Money";
        Value = 0;
        Player = plr;
    })

    self.createLeaderstat({
        Type = "NumberValue";
        Name = "Time";
        Value = 0;
        Player = plr;
    })
end

function Player.createLeaderstat(info)
    local newLeaderstat = Instance.new(info["Type"])
    newLeaderstat.Name = info["Name"]
    newLeaderstat.Value =  info["Value"] or nil
    newLeaderstat.Parent = info["Player"]
end

return Player