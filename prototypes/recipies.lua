data:extend({
  {
    type = "recipe",
    name = "sfh-fish-hatchery",
    icon = "__simple-fish-hatchery__/graphics/icons/fish_hatchery.png",
    icon_size = 64,
    icons = {
      {
        icon = "__simple-fish-hatchery__/graphics/icons/fish_hatchery.png",
        icon_size = 64,
      }
    },
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 20},
        {type = "item", name = "steel-plate", amount = 5},
    },
    results = {
        {type = "item", name = "sfh-fish-hatchery", amount = 1}
    },
  },
  {
    type = "recipe",
    name = "sfh-fish-hatching",
    icon = "__simple-fish-hatchery__/graphics/icons/fish_hatching.png",
    icon_size = 64,
    icons = {
      {
        icon = "__simple-fish-hatchery__/graphics/icons/fish_hatching.png",
        icon_size = 64,
      }
    },
    category = "sfh-fish-hatchery",
    forced_symmetry = "horizontal",
    energy_required = 120,
    ingredients = {
        {type = "item", name = "raw-fish", amount = 4},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "raw-fish", amount = 16}
    },
    enabled = false,
  },
})
