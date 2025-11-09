local LocalPlayer = game:GetService("Players").LocalPlayer

local function getHRP()
    local char = LocalPlayer.Character
    if char then
        return char:WaitForChild("HumanoidRootPart", 4)
    end
    return nil
end

local hrp = getHRP()
if not hrp then return end

--workspace["New YellerZone"].Quest.Cloud.Part2
for _ , zone in pairs(workspace:GetChildren()) do
    print(zone.Name,"1")
    if string.find(zone.Name:lower() , "zone") and zone:FindFirstChild("Quest") then
        print(zone.Name,"2")
        local Quest = zone:FindFirstChild("Quest")
        print(Quest.Name,"3")
        if not Quest then return end
        for _ , Quest in pairs(Quest:GetDescendants()) do
            print(Quest.Name,"4")
            if Quest:IsA("BasePart") and Quest:FindFirstChild("TouchInterest") then
                print(Quest.Name,"5")
                firetouchinterest(hrp , Quest , 0)
                task.wait(0.8)
                firetouchinterest(hrp , Quest , 1)
            end
        end
    end
end
