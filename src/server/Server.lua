local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")
local ServerScriptService = game:GetService("ServerScriptService")

local Modules = ReplicatedStorage:FindFirstChild("Modules")

local ModuleScripts = {}
ModuleScripts.__index = function(table, index)
    return function()
        print("No function assinged! | "..index.." in "..table)
    end
end

for index, module in pairs(Modules:GetChildren()) do
    table.insert(ModuleScripts, require(module))
end