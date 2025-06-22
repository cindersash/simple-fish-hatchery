local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "assembling-machine",
    name = "sfh-fish-hatchery",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_draw_specification = {scale = 1.5, shift = {0, -0.3}},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.25, result = "sfh-fish-hatchery"},
    max_health = 500,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"sfh-fish-hatchery"},
    crafting_speed = 1,
    energy_usage = "50kW",
    ingredient_count = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1 }
    },
    resistances = {
      {
        type = "fire",
        percent = 90
      }
    },
    fluid_boxes = {
      {
          production_type = "input",
          volume = 500,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            { flow_direction="input-output", direction = defines.direction.north, position = {-1, -1} },
            { flow_direction="input-output", direction = defines.direction.east, position = {1, 1} },
            { flow_direction="input-output", direction = defines.direction.south, position = {1, 1} },
            { flow_direction="input-output", direction = defines.direction.west, position = {-1, -1} }
          },
      },
    },
    module_specification = {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    graphics_set = {
        animation = {
            north = {
                filename = "__simple-fish-hatchery__/graphics/icons/storage_tank_1.png",
                priority = "extra-high",
                frames = 2,
                width = 219,
                height = 235,
                shift = util.by_pixel(-0.25, -1.25),
                scale = 0.5
            },
            east = {
                filename = "__simple-fish-hatchery__/graphics/icons/storage_tank_2.png",
                priority = "extra-high",
                frames = 2,
                width = 219,
                height = 235,
                shift = util.by_pixel(-0.25, -1.25),
                scale = 0.5
            },
            south = {
                filename = "__simple-fish-hatchery__/graphics/icons/storage_tank_1.png",
                priority = "extra-high",
                frames = 2,
                width = 219,
                height = 235,
                shift = util.by_pixel(-0.25, -1.25),
                scale = 0.5
            },
            west = {
                filename = "__simple-fish-hatchery__/graphics/icons/storage_tank_2.png",
                priority = "extra-high",
                frames = 2,
                width = 219,
                height = 235,
                shift = util.by_pixel(-0.25, -1.25),
                scale = 0.5
            },
        },
    },
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound =
    {
      sound = {filename = "__base__/sound/storage-tank.ogg", volume = 0.6, audible_distance_modifier = 0.5},
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    },
  },
})
