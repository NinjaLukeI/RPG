
Character = {}
Character.__index = Character
function Character:Create(def, map)

    -- Look up the entity
    local entityDef = gEntities[def.entity]
    assert(entityDef) -- The entity should always exist!

    local this =
    {
        mEntity = Entity:Create(entityDef),
        mAnims = def.anims,
        mFacing = def.facing,
        mDefaultState = def.state,
    }

    setmetatable(this, self)

    -- Create the controller states from the def
    local states = {}
    -- Make the controller state machine from the states
    this.mController = StateMachine:Create(states)

    for _, name in ipairs(def.controller) do
        local state = gCharacterStates[name]
        assert(state)
        assert(states[state.mName] == nil) -- State already in use!
        local instance = state:Create(this, map)
        states[state.mName] = function() return instance end
    end

    this.mController.states = states

    -- Change the statemachine to the initial state
    -- as definied in the def
    this.mController:Change(def.state)

    return this
end

function Character:GetFacedTileCoords()

    -- Change the facing information into a tile offset
    local xInc = 0
    local yInc = 0

    if self.mFacing == "left" then
        xInc = -1
    elseif self.mFacing == "right" then
        xInc = 1
    elseif self.mFacing == "up" then
        yInc = -1
    elseif self.mFacing == "down" then
        yInc = 1
    end

    local x = self.mEntity.mTileX + xInc
    local y = self.mEntity.mTileY + yInc

    return x, y
end