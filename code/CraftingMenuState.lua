CraftingMenuState = {}
CraftingMenuState.__index = CraftingMenuState

function CraftingMenuState:Create(parent)

  local layout = Layout:Create()
  layout:Contract('screen', 118, 40)
  layout:SplitHorz('screen', 'top', 'bottom', 0.15, 2)

  local this =
    {
        mParent = parent,
        mStack = parent.mStack,
        mStateMachine = parent.mStateMachine,
        mScrollbar = Scrollbar:Create(Texture.Find('scrollbar.png'), 135),
        mLayout = layout,
        mPanels =
        {
          layout:CreatePanel("top"),
          layout:CreatePanel("bottom"),
        },
    }

    mCraftingMenu =
    {
      Selection:Create
      {
        data = gWorld.mItems,
        spacingX = 256,
        columns = 2,
        displayRows = 4,
        spacingY = 20,
        rows = 10,
        RenderItem = function(self, renderer, x, y, item)
            gWorld:DrawItem(self, renderer, x, y, item)
          end
      }
    }

    setmetatable(this, self)
    return this
  end

  function CraftingMenuState:Enter()
  end

  function CraftingMenuState:Exit()
  end

  function CraftingMenuState:Update(dt)
  end

  function CraftingMenuState:Render(renderer)
    for _, v in ipairs(self.mPanels) do
      v:Render(renderer)
    end

    local titleX = self.mLayout:MidX("top")
    local titleY = self.mLayout:MidY("top")
    renderer:ScaleText(1.5, 1.5)
    renderer:AlignText("center", "center")
    renderer:DrawText2d(titleX, titleY, "Crafting")

  --  local menu = self.mCraftingMenu
    --menu:Render(renderer)

  end
