--
-- A manifest of all the game's assets
--
manifest =
{
    scripts =
    {
        ['main.lua'] =
        {
            path = "code/main.lua"
        },
        ['Map.lua'] =
        {
            path = "code/Map.lua"
        },
        ['Util.lua'] =
        {
            path = "code/Util.lua"
        },
		['Entity.lua'] =
		{
			path = "code/Entity.lua"
		},
		['Tween.lua'] =
		{
			path = "code/Tween.lua"
		},
		['StateMachine.lua'] =
		{
			path = "code/StateMachine.lua"
		},
		['WaitState.lua'] =
		{
			path = "code/WaitState.lua"
		},
		['MoveState.lua'] =
		{
			path = "code/MoveState.lua"
		},
		['Animation.lua'] =
		{
			path = "code/Animation.lua"
		},
		['Actions.lua'] =
		{
			path = 'code/Actions.lua'
		},
		['map_cave1.lua'] =
        {
            path = "code/map_cave1.lua"
        },
		['map_jail.lua'] =
		{
			path = "code/map_jail.lua"
		},
		['Trigger.lua'] =
		{
			path = "code/Trigger.lua"
		},
    ['StatDef.lua'] =
    {
      path = "code/StatDef.lua",
    },
    ['PartyMemberDefs.lua'] =
    {
      path = "code/PartyMemberDefs.lua"
    },
		['EntityDefs.lua'] =
		{
			path = "code/EntityDefs.lua"
		},
		['Character.lua'] =
		{
			path = "code/Character.lua"
		},
		['NPCStandState.lua'] =
		{
			path = "code/NPCStandState.lua"
		},
		['PlanStrollState.lua'] =
		{
			path = "code/PlanStrollState.lua"
		},
		['Panel.lua'] =
		{
			path = "code/Panel.lua"
		},
		['Textbox.lua'] =
		{
			path = "code/Textbox.lua"
		},
		['Selection.lua'] =
		{
			path = "code/Selection.lua"
		},
		['ProgressBar.lua'] =
		{
			path = "code/ProgressBar.lua"
		},
		["Scrollbar.lua"] =
		{
			path = "code/Scrollbar.lua"
		},
		['StateStack.lua'] =
		{
			path = "code/StateStack.lua"
		},
		['Dependencies.lua'] =
		{
			path = "code/Dependencies.lua"
		},
		['ExploreState.lua'] =
		{
			path = "code/ExploreState.lua"
		},
		['FadeState.lua'] =
		{
			path = "code/FadeState.lua"
		},
		['Layout.lua'] =
		{
			path = "code/Layout.lua"
		},
		['InGameMenuState.lua'] =
		{
			path = "code/InGameMenuState.lua"
		},
		['FrontMenuState.lua'] =
		{
			path = "code/FrontMenuState.lua"
		},
		['ItemDB.lua'] =
		{
			path = "code/ItemDB.lua"
		},
		['World.lua'] =
		{
			path = "code/World.lua"
		},
		['Icons.lua'] =
		{
			path = 'code/Icons.lua'
		},
		['ItemMenuState.lua'] =
		{
			path = "code/ItemMenuState.lua"
		},
		['Storyboard.lua'] =
		{
			path = "code/Storyboard.lua"
		},
		['StoryboardEvents.lua'] =
		{
			path = "code/StoryboardEvents.lua"
		},
		['ScreenState.lua'] =
		{
			path = "code/ScreenState.lua"
		},
		['CaptionStyles.lua'] =
		{
			path = "code/CaptionStyles.lua"
		},
		['CaptionState.lua'] =
		{
			path = "code/CaptionState.lua"
		},
		['MapDB.lua'] =
		{
			path = "code/MapDB.lua"
		},
		['SleepState.lua'] =
		{
			path = "code/SleepState.lua"
		},
		['FollowPathState.lua'] =
		{
			path = "code/FollowPathState.lua"
		},
    ['Stats.lua'] =
    {
      path = "code/Stats.lua"
    },
    ['Dice.lua'] =
    {
      path = "code/Dice.lua"
    },
    ['Actor.lua'] =
    {
      path = "code/Actor.lua"
    },
    ['Party.lua'] =
    {
      path = "code/Party.lua"
    },
    ['LevelFunction.lua'] =
    {
      path = "code/LevelFunction.lua"
    },
    ['ActorSummary.lua'] =
    {
      path = "code/ActorSummary.lua"
    },
    ['StatusMenuState.lua'] =
    {
      path = "code/StatusMenuState.lua"
    },
    ['EquipMenuState.lua'] =
    {
      path = "code/EquipMenuState.lua"
    },
    ['CraftingMenuState.lua'] =
    {
      path = "code/CraftingMenuState.lua"
    },

    },
    textures =
    {
		['gradient_panel.png'] =
		{
			path = "art/gradient_panel.png",
		},
        ['cave16x16.png'] =
        {
            path = "art/cave16x16.png",
        },
		['rpg_indoor.png'] =
		{
			path = "art/rpg_indoor.png"
		},
		['walk_cycle.png'] =
		{
			path = "art/walk_cycle.png"
		},
		['collision_graphic.png'] =
		{
			path = "art/collision_graphic.png"
		},
		['avatar.png'] =
		{
			path = "art/avatar.png"
		},
		['continue_caret.png'] =
		{
			path = "art/continue_caret.png"
		},
		['cursor.png'] =
		{
			path = "art/cursor.png"
		},
		['foreground.png'] =
		{
			path = "art/foreground.png"
		},
		['background.png'] =
		{
			path = "art/background.png"
		},
		['scrollbar.png'] =
		{
			path = "art/scrollbar.png"
		},
		['inventory_icons.png'] =
		{
			path = "art/inventory_icons.png"
		},
		['sleeping.png'] =
		{
			path = "art/sleeping.png"
		},
		['tileset_jail.png'] =
		{
			path = "art/tileset_jail.png"
		},
    ['hero_portait.png'] =
    {
      path = "art/hero_portrait.png"
    },
    ['thief_portrait.png'] =
    {
      path = "art/thief_portrait.png"
    },
    ['mage_portrait.png'] =
    {
      path = "art/mage_portrait.png"
    },
    ['hpforeground.png'] =
    {
      path = "art/hpforeground.png"
    },
    ['hpbackground.png'] =
    {
      path = "art/hpbackground.png"
    },
    ['xpbackground.png'] =
    {
      path = "art/xpbackground.png"
    },
    ['xpforeground.png'] =
    {
      path = "art/xpforeground.png"
    },
    ['mpforeground.png'] =
    {
      path = "art/mpforeground.png"
    },
    ['mpbackground.png'] =
    {
      path = "art/mpbackground.png"
    },
    ['chest.png'] =
    {
      path  = "art/chest.png"
    },

    },
	['fonts'] =
	{
		["default"] =
		{
			path = "art/junction.ttf",
		},

	},

	['sounds'] =
	{
		['cave'] =
		{
			path = "sound/cave.wav"
		},
	}

}
