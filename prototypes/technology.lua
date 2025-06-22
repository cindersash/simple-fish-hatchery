data:extend({
    {
        type = "technology",
        name = "sfh-fish-hatchery",
        icon = "__simple-fish-hatchery__/graphics/icons/fish_hatching.png",
        icon_size = 64,
        prerequisites = {"fluid-handling"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "sfh-fish-hatchery"
            },
            {
                type = "unlock-recipe",
                recipe = "sfh-fish-hatching"
            },
        },
        unit =
        {
            count = 20,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30
        },
        order = "i-c-d"
    },
})
