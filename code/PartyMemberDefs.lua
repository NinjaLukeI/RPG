gPartyMemberDefs =
{
  hero =
  {
    id = "hero",
    stats =
    {
      ["hp_now"] = 300,
      ["hp_max"] = 300,
      ["mp_now"] = 250,
      ["mp_max"] = 250,
      ["strength"] = 10,
      ["speed"] = 10,
      ["intelligence"] = 10,
    },
    statGrowth =
    {
      ["hp_max"] = Dice:Create("4d40+100"),
  		["mp_max"] = Dice:Create("2d25+100"),
  		["strength"] = gStatGrowth.fast,
  		["speed"] = gStatGrowth.fast,
  		["intelligence"] = gStatGrowth.med,
    },
    portrait = "hero_portait.png",
    name = "Tmahdre",
    actions = {"attack", "item"}
  },
  thief =
  {
    id = "thief",
    stats =
    {
      ["hp_now"] = 260,
      ["hp_max"] = 260,
      ["mp_now"] = 190,
      ["mp_max"] = 190,
      ["str"] = 9,
      ["spd"] = 16,
      ["int"] = 8,
    },
    statGrowth =
    {
      ["hp_max"] = Dice:Create("3d40+100"),
  		["mp_max"] = Dice:Create("4d25+100"),
  		["str"] = gStatGrowth.med,
  		["spd"] = gStatGrowth.fast,
  		["int"] = gStatGrowth.med,
    },
    portrait = "thief_portrait.png",
    name = "X",
    actions = {"attack", "item"}
  },
  mage =
  {
    id = "mage",
    stats =
    {
      ["hp_now"] = 240,
      ["hp_max"] = 240,
      ["mp_now"] = 300,
      ["mp_max"] = 300,
      ["str"] = 7,
      ["spd"] = 10,
      ["int"] = 20,
    },
    statGrowth =
    {
      ["hp_max"] = Dice:Create("3d40+100"),
      ["mp_max"] = Dice:Create("4d60+100"),
      ["str"] = gStatGrowth.med,
      ["spd"] = gStatGrowth.med,
      ["int"] = gStatGrowth.fast,
    },
    portrait = "mage_portrait.png",
    name = "Kameron",
    actions = {"attack", "item"},
  },

}
