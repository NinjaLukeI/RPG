ItemDB =
{
    [-1] =
    {
        name = "",
        type = "",
        icon = nil,
        restriction = nil,
        description = "",
        special = "",
        stats =
        {
        },
        use = nil,
        use_restriction = nil,
    },


    --1
    {
      name = "Bone Blade",
      type = "weapon",
      icon = "sword",
      restriction = {"hero"},
      description = "A wicked sword made from the bones of soldiers.",
      stats = {add = { attack = 4} }
    },
    --2
    {
      name = "Bone Armor",
      type = "armor",
      icon = "plate",
      restriction = {"hero"},
      description = "Armor hastily made from broken bones.",
      stats = {add = {defense = 4, resist = 1}}

    },
    --3
    {
      name = "Lemari Bracelet",
      type = "accessory",
      description = "Manifests the power of the Lesser Spirit, Lemari.",
      stats = {add = {strength = 10}},
    },
    --4
    {
      name = "Amaeril Robes",
      type = "armor",
      icon = "robe",
      restriction = {"mage"},
      description = "Belonged to a battlemage, forged using Amaeril scales.",
      stats = {add = {defense = 2, resist = 8}}
    },
    --5
    {
      name = "Lesser Casting Staff",
      type = "weapon",
      icon = "stave",
      restriction = {"mage"},
      description = "A casting staff, not to be used against real enemies due to its weakness.",
      stats = {add = { attack = 1, magic = 4} }
    },
    --6
    {
      name = "Ring of Magnification",
      type = "accessory",
      description = "Manifests a caster's magic abilities, but decreasing their resistance against it.",
      stats = {add = {magic = 6, resist = -3}},
    },
    --7
    {
       name = "Black Dagger",
       type = "weapon",
       icon = "dagger",
       restriction = {"thief"},
       description = "A dagger made out of an unknown material.",
       stats = { add = { attack = 4 } }
   },
   --8
   {
       name = "Footpad Leathers",
       type = "armor",
       icon = "leather",
       restriction = {"thief"},
       description = "Light armor for silent movement.",
       stats = { add = { defense = 3, speed = 1 } },
   },
   --9
   {
       name = "Swift Boots",
       type = "accessory",
       description = "Increases speed by 25%",
       stats = { mult = { speed = 0.25 } },
   },

   --10
   {
      name = "Herb",
      type = "craftable",
      description = "Can be used to craft weak potions that restore 20hp",
   },

   --11
    {
        name = "Mysterious Torque",
        type = "accessory",
        description = "A golden torque that glitters.",
        stats =
        {
            strength = 10,
            speed = 10
        }
    },
    --12
    {
        name = "Heal Potion",
        type = "useable",
        description = "Heals a little HP.",
        use =
        {
          action = "small_heal",
          target = "any",
          target_default = "friendly_wounded",
          hint = "Choose target to heal.",
        },
    },
    --13
    {
        name = "Life Salve",
        type = "useable",
        description = "Pull a character back from the clutches of Death.",
        use =
        {
          action = "revive",
          target = "any",
          target_default = "friendly_dead",
          hint = "Choose target to revive.",
        }
    },
    --14
    {
        name = "Bronze Sword",
        type = "weapon",
        description = "A short sword with dull blade.",
        stats =
        {
            attack = 10
        }
    },
    --15
    {
        name = "Old bone",
        type = "key",
        description = "A calcified human femur"
    },
}

EmptyItem = ItemDB[-1]

for id, def in pairs(ItemDB) do
  def.id = id
end

local function DoesItemHaveStats(item)
    return item.type == "weapon" or
           item.type == "accessory" or
           item.type == "armor"
end

--
-- If any stat is missing add it and see it to
-- the itemalue in EmptyItem
--
for k, v in ipairs(ItemDB) do
    if DoesItemHaveStats(v) then
        v.stats = v.stats or {}
        local stats = v.stats
        for k, v in ipairs(EmptyItem) do
            stats[key] = stats[key] or v.stats
        end
    end
end
