local UserInputService = game:GetService("UserInputService")
local Player = {}
Player.__index = Player

function Player.new(plr)
    local self = setmetatable({}, Player)

    self:_init(Player)

    return self
end

function Player:_init(player)
    local leaderstats = Instance.new("Folder", player) -- Remember to make the player passed through the instance!
    leaderstats.Name = "leaderstats"

    self.createLeaderstat({
        Type = "NumberValue";
        Name = "Money";
        Value = 0;
        Parent = player;
    })

    self.createLeaderstat({
        Type = "NumberValue";
        Name = "Time";
        Value = 0;
        Parent = player;
    })
end

function Player.createLeaderstat(info)
    local newLeaderstat = Instance.new(info["Type"])
    newLeaderstat.Name = info["Name"]
    newLeaderstat.Value =  info["Value"] or nil
    newLeaderstat.Parent = info["Player"]
end

return Player