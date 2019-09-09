LoadLibrary("Asset")
Asset.Run("Dependencies.lua")

gRenderer = Renderer:Create()
gStack = StateStack:Create()
gWorld = World:Create()
gIcons = Icons:Create(Texture.Find("inventory_icons.png"))

gWorld.mParty:Add(Actor:Create(gPartyMemberDefs.hero))
gWorld.mParty:Add(Actor:Create(gPartyMemberDefs.thief))
gWorld.mParty:Add(Actor:Create(gPartyMemberDefs.mage))
--gStack:Push(ExploreState:Create(gStack, CreateCave1(),
	--		Vector.Create(15, 8, 1)))

print("Adding Chest")
local exploreState = gStack:Top()
local map = exploreState.mMap
local loot = {}

addChestAction = Actions.AddChest(map, "chest", loot, 8, 5)
addChestAction()

function update()

	local dt = GetDeltaTime()
	gStack:Update(dt)
	gStack:Render(gRenderer)
	gWorld:Update(dt)
end
