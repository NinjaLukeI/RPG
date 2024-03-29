
-- WaitState, MoveState must already be loaded.
assert(WaitState)
assert(MoveState)
assert(SleepState)

gCharacterStates =
{
    wait = WaitState,
    move = MoveState,
    npc_stand = NPCStandState,
    plan_stroll = PlanStrollState,
    sleep = SleepState,
	  follow_path = FollowPathState,
}

gEntities =
{
    hero =
    {
        texture = "walk_cycle.png",
        width = 16,
        height = 24,
        startFrame = 9,
        tileX = 11,
        tileY = 3,
        layer = 1
    },

    thief =
    {
      texture = "walk_cycle.png",
      width = 16,
      height = 24,
      startFrame = 41,
      tileX = 11,
      tileY = 3,
      layer = 1
    },

    mage =
    {
      texture = "walk_cycle.png",
      width = 16,
      height = 24,
      startFrame = 25,
      tileX = 11,
      tileY = 3,
      layer = 1
    },

    sleep =
    {
        texture = "sleeping.png",
        width = 32,
        height = 32,
        startFrame = 3,
        x = 18,
        y = 32,
		layer = 1
    },

  	guard =
  	{
  		texture = "walk_cycle.png",
  		width = 16,
  		height = 24,
  		startFrame = 89,
  		tileX = 1,
  		tileY = 1,
  		layer = 1,
  	},

    chest =
    {
      texture = "chest.png",
      width = 16,
      height = 16,
      startFrame = 1,
      openFrame = 2,
    }
}

gCharacters =
{
    strolling_npc =
    {
        entity = "hero",
        anims =
        {
            up = {1, 2, 3, 4},
            right = {5, 6, 7, 8},
            down = {9, 10, 11, 12},
            left = {13, 14, 15, 16},
        },

        facing = "down",
        controller = {"plan_stroll", "move"},
        state = "plan_stroll"
    },

    standing_npc =
    {
        entity = "hero",
        anims = {},
        facing = "down",
        controller = {"npc_stand"},
        state = "npc_stand"
    },

    hero =
    {   actorId = "hero",
        partyDef = gPartyMemberDefs.hero,
        entity = "hero",
        anims =
        {
            up = {1, 2, 3, 4},
            right = {5, 6, 7, 8},
            down = {9, 10, 11, 12},
            left = {13, 14, 15, 16},
        },
        facing = "down",
        controller = { "wait", "move" },
        state = "wait"
    },

    thief =
    {   actorId = "thief",
        --partyDef = gPartyMemberDefs.thief
        entity = "thief",
        anims =
        {
            up = {33, 34, 35, 36},
            right = {37, 38, 39, 40},
            down = {41, 42, 43, 44},
            left = {45, 46, 47, 48},
        },
        facing = "down",
        controller = { "npc_stand", "move" },
        state = "npc_stand",
    },

    mage =
    {   actorId = "mage",
        --partyDef = gPartyMemberDefs.thief
        entity = "mage",
        anims =
        {
            up = {17, 18, 19, 20},
            right = {21, 22, 23, 24},
            down = {25, 26, 27, 28},
            left = {29, 30, 31, 32},
        },
        facing = "down",
        controller = { "npc_stand", "move" },
        state = "npc_stand",
    },

    -- New
    sleeper =
    {
        entity = "hero",
        anims =
        {
            left = {13},
        },
        facing = "left",
        controller  = {"sleep"},
        state = "sleep"
    },

	guard =
	{
		entity = "guard",
		anims =
		{
			up = {81, 82, 83, 84},
			right = {85, 86, 87, 88},
			down = {89, 90, 91, 92},
			left = {93, 94, 95, 96},
		},
		facing = "up",
		controller = {"npc_stand", "follow_path", "move"},
		state = "npc_stand"
	},
}
