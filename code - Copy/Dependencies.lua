
function Apply(list, f, iter)
	iter = iter or ipairs
	for k, v in iter(list) do
		f(v, k)
	end
end

--loading libraries
Apply({
	"Renderer",
	"Sprite",
	"System",
	"Texture",
	"Vector",
	"Keyboard",
	"Sound"},
	function(v) LoadLibrary(v) end)
--loading classes
Apply({
	"Animation.lua",
	"Map.lua",
	"Util.lua",
	"Entity.lua",
	"StateMachine.lua",
	"MoveState.lua",
	"WaitState.lua",
	"SleepState.lua",
	"NPCStandState.lua",
	"PlanStrollState.lua",
	"FollowPathState.lua",
	"Tween.lua",
	"Actions.lua",
	"Trigger.lua",
	"Dice.lua",
	"StatDef.lua",
	"PartyMemberDefs.lua",
	"EntityDefs.lua",
	"Character.lua",
	"map_cave1.lua",
	"map_jail.lua",
	"Panel.lua",
	"Textbox.lua",
	"Selection.lua",
	"ProgressBar.lua",
	"Scrollbar.lua",
	"StateStack.lua",
	"ExploreState.lua",
	"FadeState.lua",
	"Layout.lua",
	"InGameMenuState.lua",
	"FrontMenuState.lua",
	"ItemDB.lua",
	"World.lua",
	"Icons.lua",
	"ItemMenuState.lua",
	"Storyboard.lua",
	"StoryboardEvents.lua",
	"ScreenState.lua",
	"CaptionStyles.lua",
	"CaptionState.lua",
	"MapDB.lua",
	"Stats.lua",
	"Actor.lua",
	"Party.lua",
	"LevelFunction.lua",
	"ActorSummary.lua",
	"StatusMenuState.lua",



	},
	function(v) Asset.Run(v) end)
