function CreateMaze1()
return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 6,
  properties = {},
  on_wake = {},
  actions = {},
  trigger_types = {},
  triggers = {},
  tilesets = {
    {
      name = "cave16x16",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "cave16x16.png",
      imagewidth = 256,
      imageheight = 336,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 336,
      tiles = {}
    },
    {
      name = "collision_graphic",
      firstgid = 337,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../art/collision_graphic.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 4,
      tiles = {}
    },
    {
      name = "rpgtileset",
      firstgid = 341,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../art/rpg_indoor.png",
      imagewidth = 176,
      imageheight = 192,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 132,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "base",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        215, 216, 217, 221, 4, 5, 6, 224, 220, 220, 220, 220, 220, 220, 220, 220, 220, 52, 53, 54,
        231, 18, 233, 237, 20, 21, 22, 240, 220, 220, 220, 220, 220, 220, 220, 220, 220, 68, 69, 70,
        247, 248, 249, 253, 36, 37, 38, 256, 220, 215, 216, 216, 216, 216, 216, 216, 218, 84, 85, 86,
        220, 220, 220, 231, 146, 146, 146, 233, 220, 231, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232,
        215, 250, 251, 218, 146, 146, 146, 233, 220, 231, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232,
        231, 146, 146, 146, 146, 146, 146, 233, 220, 231, 232, 232, 235, 267, 267, 267, 234, 232, 232, 235,
        247, 266, 267, 234, 146, 235, 248, 249, 220, 231, 232, 232, 233, 220, 220, 220, 231, 232, 232, 233,
        220, 220, 220, 231, 232, 233, 220, 220, 220, 231, 232, 232, 233, 220, 220, 220, 231, 232, 232, 233,
        220, 220, 220, 231, 232, 233, 220, 220, 220, 231, 232, 232, 233, 220, 220, 220, 231, 232, 232, 233,
        220, 220, 220, 231, 232, 219, 216, 216, 216, 218, 232, 232, 233, 220, 220, 220, 231, 232, 232, 233,
        220, 220, 220, 231, 232, 232, 232, 232, 232, 232, 232, 232, 233, 220, 220, 220, 231, 232, 232, 233,
        215, 251, 251, 218, 232, 232, 232, 232, 232, 232, 232, 232, 233, 220, 220, 251, 218, 232, 232, 233,
        231, 232, 232, 232, 232, 235, 248, 248, 248, 234, 232, 232, 233, 220, 218, 232, 232, 232, 232, 233,
        231, 232, 232, 235, 248, 249, 220, 220, 220, 231, 232, 232, 233, 231, 232, 232, 232, 232, 232, 233,
        231, 232, 232, 233, 220, 220, 220, 220, 220, 231, 232, 232, 233, 231, 232, 232, 235, 248, 248, 249,
        231, 232, 232, 233, 220, 220, 220, 220, 220, 231, 232, 232, 233, 231, 232, 232, 233, 220, 220, 220,
        231, 232, 232, 233, 220, 220, 220, 220, 220, 231, 232, 232, 233, 231, 232, 232, 219, 216, 216, 217,
        231, 232, 232, 233, 220, 220, 220, 220, 220, 231, 232, 232, 233, 231, 232, 232, 232, 232, 232, 233,
        231, 232, 232, 233, 220, 220, 220, 220, 220, 231, 232, 232, 233, 231, 232, 232, 232, 232, 232, 233,
        247, 248, 248, 249, 220, 220, 220, 220, 220, 247, 248, 248, 249, 247, 248, 248, 248, 248, 248, 249
      }
    },
    {
      type = "tilelayer",
      name = "decoration",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 145, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 113, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "collision",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = false,
      opacity = 0.46,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 337, 337, 337, 337, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337, 337, 337,
        0, 0, 0, 337, 0, 0, 0, 337, 0, 337, 337, 337, 337, 337, 337, 337, 337, 337, 0, 337,
        0, 0, 0, 337, 0, 0, 0, 337, 0, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337,
        337, 337, 337, 337, 0, 0, 0, 337, 0, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 337,
        337, 0, 0, 0, 0, 0, 0, 337, 0, 337, 0, 0, 337, 337, 337, 337, 337, 0, 0, 337,
        337, 337, 337, 337, 0, 337, 337, 337, 0, 337, 0, 0, 337, 0, 0, 0, 337, 0, 0, 337,
        0, 0, 0, 337, 0, 337, 0, 0, 0, 337, 0, 0, 337, 0, 0, 0, 337, 0, 0, 337,
        0, 0, 0, 337, 0, 337, 0, 0, 0, 337, 0, 0, 337, 0, 0, 0, 337, 0, 0, 337,
        0, 0, 0, 337, 0, 337, 337, 337, 337, 337, 0, 0, 337, 0, 0, 0, 337, 0, 0, 337,
        0, 0, 0, 337, 0, 0, 0, 0, 0, 0, 0, 0, 337, 0, 0, 0, 337, 0, 0, 337,
        337, 337, 337, 337, 0, 0, 0, 0, 0, 0, 0, 0, 337, 0, 337, 337, 337, 0, 0, 337,
        337, 0, 0, 0, 337, 337, 337, 337, 337, 337, 0, 0, 337, 337, 337, 0, 0, 0, 0, 337,
        337, 0, 0, 337, 337, 0, 0, 0, 0, 337, 0, 0, 337, 337, 0, 0, 0, 0, 0, 337,
        337, 0, 0, 337, 0, 0, 0, 0, 0, 337, 0, 0, 337, 337, 0, 0, 337, 337, 337, 337,
        337, 0, 0, 337, 0, 0, 0, 0, 0, 337, 0, 0, 337, 337, 0, 0, 337, 0, 0, 0,
        337, 0, 0, 337, 0, 0, 0, 0, 0, 337, 0, 0, 337, 337, 0, 0, 337, 337, 337, 337,
        337, 0, 0, 337, 0, 0, 0, 0, 0, 337, 0, 0, 337, 337, 0, 0, 0, 0, 0, 337,
        337, 0, 0, 337, 0, 0, 0, 0, 0, 337, 0, 0, 337, 337, 0, 0, 0, 0, 0, 337,
        337, 337, 337, 337, 0, 0, 0, 0, 0, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337
      }
    },
    {
      type = "tilelayer",
      name = "base2",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "dec2",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "col2",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}
end
