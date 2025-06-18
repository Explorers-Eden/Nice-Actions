execute store result storage eden:temp horse_stats.speed float 1 run attribute @n[type=horse,distance=..8] minecraft:movement_speed get 20
execute store result storage eden:temp horse_stats.health float 1 run attribute @n[type=horse,distance=..8] minecraft:max_health get
execute store result storage eden:temp horse_stats.jump float 1 run attribute @n[type=horse,distance=..8] minecraft:jump_strength get 10000
data modify storage eden:temp horse_stats.cost set from storage eden:settings nice_actions.horse_info_cost

execute store result score $horse_jump eden.technical run data get storage eden:temp horse_stats.jump

function nice_actions:horse_info/display_message with storage eden:temp horse_stats