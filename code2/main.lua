LoadLibrary("Asset")
Asset.Run("Dependencies.lua")

gRenderer = Renderer:Create()
local stack = StateStack:Create()



local intro =
{
	Scene
	{
		map = "maze1",
		focusX = 5,
		focusY = 5,
		hideHero = true,
	},
	
	BlackScreen(),
	RunAction("AddNPC",
				{"maze1", {def = "sleeper", x = 14, y = 19}},
				{GetMapRef}),
	Play("cave"),
	NoBlock(FadeSound("cave", 0, 1, 3)), -- 0 -> 1 in 3 secs
	Caption("place", "title", "Dark Cave.."),
	Caption("time", "subtitle", "Maybe Night?"),
	Wait(1),
	NoBlock(
		FadeOutCaption("place", 3)
		),
	FadeOutCaption("time", 3),
	FadeSound("cave", 1, 0, 3), -- 1 -> 0 in 1 secs
	KillState("place"),
	KillState("time"),
	FadeOutScreen(),
	Wait(2),
	FadeInScreen(),
	Wait(0.3),
	FadeOutScreen(),
	Wait(1),
	Stop("cave"),
	
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