LoadLibrary("Asset")
Asset.Run("Dependencies.lua")

gRenderer = Renderer:Create()
local stack = StateStack:Create()

--SOP stands for Storyboard Operation


local intro =
{
	SOP.Scene
	{
		map = "cave1",
		focusX = 10,
		focusY = 10,
		hideHero = true,
	},
	
	SOP.BlackScreen(),
	SOP.RunAction("AddNPC",
				{"cave1", {def = "sleeper", id = "sleeper", x = 5, y = 5}},
				{GetMapRef}),
	SOP.Play("cave"),
	SOP.NoBlock(SOP.FadeSound("cave", 0, 1, 3)), -- 0 -> 1 in 3 secs
	SOP.Caption("place", "title", "Dark Cave.."),
	SOP.Caption("time", "subtitle", "Maybe Night?"),
	SOP.Wait(1),
	SOP.NoBlock(
		SOP.FadeOutCaption("place", 3)
		),
	SOP.FadeOutCaption("time", 3),
	SOP.FadeSound("cave", 1, 0, 3), -- 1 -> 0 in 3 secs
	SOP.KillState("place"),
	SOP.KillState("time"),
	SOP.Wait(1),
	SOP.FadeOutScreen(),
	SOP.Wait(2),
	SOP.FadeInScreen(),
	SOP.RunAction("AddNPC",
		{"cave1", { def = "guard", id = "guard1", x = 5, y = 2}},
		{GetMapRef}),
	SOP.NoBlock(SOP.FadeOutScreen()),
	SOP.MoveNPC("guard1", "cave1",
	{
	"down", "down", "left",
	"down", "right"
		}),
	SOP.Wait(0.3),
	SOP.Say("cave1", "guard1", "Sir! Wake up! All the men have died!", 3),
	SOP.FadeInScreen(),
	SOP.FadeSound("cave", 1, 0, 1),
	SOP.Stop("cave"),
	SOP.ReplaceScene("cave1",
				{
					map = "jail",
					focusX = 54,
					focusY = 11,
					hideHero = false,
				}),
	SOP.FadeOutScreen(),
	SOP.Wait(0.4),
	SOP.Say("jail", "hero", "..When will I get released?", 3),
	SOP.HandOff("jail")
	
}


--local explore = ExploreState:Create(stack, mapDef, Vector.Create(11, 3, 1))
--local menu = InGameMenuState:Create(stack)
local storyboard = Storyboard:Create(stack, intro)

--gWorld = World:Create()
--gIcons = Icons:Create(Texture.Find("inventory_icons.png"))
--stack:Push(explore)
--stack:Push(menu)
stack:Push(storyboard)



function update()

	local dt = GetDeltaTime()
	stack:Update(dt)
	stack:Render(gRenderer)
	--gWorld:Update(dt)
end