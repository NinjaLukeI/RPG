
FrontMenuState = {}
FrontMenuState.__index = FrontMenuState
function FrontMenuState:Create(parent, world)

    local layout = Layout:Create()
    layout:Contract('screen', 118, 40)
    layout:SplitHorz('screen', "top", "bottom", 0.12, 2)
    layout:SplitVert('bottom', "left", "party", 0.726, 2)
    layout:SplitHorz('left', "menu", "gold", 0.7, 2)

    local this
    this =
    {
        mParent = parent,
        mStack = parent.mStack,
        mStateMachine = parent.mStateMachine,
        mLayout = layout,

        mSelections = Selection:Create
        {
            spacingY = 32,
            data =
            {
                "Items",
                -- "Magic",
                -- "Equipment",
                 "Status",
                -- "Save"
            },
            OnSelection = function(...) this:OnMenuClick(...) end,
            mTopBarText = "Empty Room",
            mInPartyMenu = false,
        },

        mPanels =
        {
            layout:CreatePanel("gold"),
            layout:CreatePanel("top"),
            layout:CreatePanel("party"),
            layout:CreatePanel("menu")
        },
        mTopBarText = "Menu",
    }

    setmetatable(this, self)


    this.mSelections.mX = this.mLayout:MidX("menu") - 60
    this.mSelections.mY = this.mLayout:Top("menu") - 24

    this.mPartyMenu = Selection:Create
    {
      spacingY = 90,
      data = this:CreatePartySummaries(),
      columns = 1,
      rows = 3,
      OnSelection = function(...) this:OnPartyMemberChosen(...) end,
      RenderItem = function(menu, renderer, x, y, item)
        if item then
          item:SetPosition(x, y + 35)
          item:Render(renderer)
        end
      end
    }
    this.mPartyMenu:HideCursor()

    return this
end

function FrontMenuState:Enter()

end

function FrontMenuState:Exit()
end

function FrontMenuState:OnMenuClick(index)

    local ITEMS = 1

    if index == ITEMS then
        return self.mStateMachine:Change("items")
    end

    self.mInPartyMenu = true
    self.mSelections:HideCursor()
    self.mPartyMenu:ShowCursor()
    self.mPrevTopBarText = self.mTopBarText
    self.mTopBarText = "Choose a party member"
end

function FrontMenuState:Update(dt)
    self.mSelections:HandleInput()

    if Keyboard.JustPressed(KEY_BACKSPACE) or
       Keyboard.JustPressed(KEY_ESCAPE) then
        self.mStack:Pop()
    end

    if self.mInPartyMenu then
      self.mPartyMenu:HandleInput()

      if Keyboard.JustPressed(KEY_BACKSPACE) or
         Keyboard.JustPressed(KEY_ESCAPE) then
           self.mInPartyMenu = false
           self.mTopBarText = self.mPrevTopBarText
           self.mSelections:ShowCursor()
           self.mPartyMenu:HideCursor()
      end

    else
      self.mSelections:HandleInput()

      if Keyboard.JustPressed(KEY_BACKSPACE) or
         Keyboard.JustPressed(KEY_ESCAPE) then
           self.mStack:Pop()
         end

    end


end

function FrontMenuState:Render(renderer)
    for k, v in ipairs(self.mPanels) do
        v:Render(renderer)
    end

    renderer:ScaleText(1.5, 1.5)
    renderer:AlignText("left", "center")
    local menuX = self.mLayout:Left("menu") - 16
    local menuY = self.mLayout:Top("menu") - 24
    self.mSelections:SetPosition(menuX, menuY)
    self.mSelections:Render(renderer)

    local nameX = self.mLayout:MidX("top")
    local nameY = self.mLayout:MidY("top")
    renderer:AlignText("center", "center")
    renderer:DrawText2d(nameX, nameY, self.mTopBarText)

    local goldX = self.mLayout:MidX("gold") - 22
    local goldY = self.mLayout:MidY("gold") + 22

    renderer:ScaleText(1.22, 1.22)
    renderer:AlignText("right", "top")
    renderer:DrawText2d(goldX, goldY, "GP:")
    renderer:DrawText2d(goldX, goldY - 25, "TIME:")
    renderer:AlignText("left", "top")
    renderer:DrawText2d(goldX + 10, goldY, gWorld:GoldAsString())
    renderer:DrawText2d(goldX + 10, goldY - 25, gWorld:TimeAsString())

    local partyX = self.mLayout:Left("party") - 16
    local partyY = self.mLayout:Top("party") - 45
    self.mPartyMenu:SetPosition(partyX, partyY)
    self.mPartyMenu:Render(gRenderer)
end

function FrontMenuState:CreatePartySummaries()

  local partyMembers = gWorld.mParty.mMembers

  local out = {}
  for _, v in pairs(partyMembers) do
    local summary = ActorSummary:Create(v,
      { showXP = true })
    table.insert(out, summary)
  end

  return out
end

function FrontMenuState:OnPartyMemberChosen(actorIndex, actorSummary)
  --state needs to be moved according to menu Selection

  local indexToStateId =
  {
    [2] = "status",
    --more statuses can go here
  }

  local actor = actorSummary.mActor
  local index = self.mSelections:GetIndex()
  local stateId = indexToStateId[index]
  self.mStateMachine:Change(stateId, actor)
end
