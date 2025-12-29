##default technical scoreboard
scoreboard objectives add nice_actions.technical dummy

##add additional scoreboards
scoreboard objectives add nice_actions.dialog_trigger trigger {"bold":false,"color":"gold","italic":false,"text":"Nice Actions"}
scoreboard objectives add nice_actions.stats_trigger trigger {"bold":false,"color":"green","italic":false,"text":"Share Statistics"}
scoreboard objectives add nice_actions.exp_level dummy
scoreboard objectives add nice_actions.rtp.cooldown dummy
scoreboard objectives add nice_actions.rtp.timer dummy
scoreboard objectives add nice_actions.tp_spawn.cooldown dummy
scoreboard objectives add nice_actions.tp_spawn.timer dummy
scoreboard objectives add nice_actions.tp_home.cooldown dummy
scoreboard objectives add nice_actions.tp_home.timer dummy
scoreboard objectives add nice_actions.sit dummy
scoreboard objectives add nice_actions.has_died_today deathCount
scoreboard objectives add nice_actions.hud.coords dummy
scoreboard objectives add nice_actions.hud.time dummy
scoreboard objectives add nice_actions.events.participate dummy
scoreboard objectives add nice_actions.events.counter dummy

##calendar/time scoreboards
scoreboard objectives add nice_actions.calendar dummy
scoreboard objectives add nice_actions.has_slept minecraft.custom:minecraft.sleep_in_bed
scoreboard players reset * nice_actions.has_slept
scoreboard players reset $sleep_triggered nice_actions.technical
scoreboard players reset $sleep_msg_scheduled nice_actions.technical
execute unless score $day nice_actions.calendar matches 1.. run scoreboard players set $day nice_actions.calendar 1
execute unless score $month nice_actions.calendar matches 1.. run scoreboard players set $month nice_actions.calendar 1
execute unless score $year nice_actions.calendar matches 1.. run scoreboard players set $year nice_actions.calendar 1
execute unless data storage eden:calendar global.weekday run data modify storage eden:calendar global.weekday set value "Monday"

##fixed scoreboard values
scoreboard players set $1 nice_actions.technical 1
scoreboard players set $5 nice_actions.technical 5
scoreboard players set $6 nice_actions.technical 6
scoreboard players set $12 nice_actions.technical 12
scoreboard players set $18 nice_actions.technical 18
scoreboard players set $24 nice_actions.technical 24
scoreboard players set $60 nice_actions.technical 60
scoreboard players set $100 nice_actions.technical 100

##add default values
execute unless data storage eden:settings nice_actions run function nice_actions:default_values

##add player statistic scoreboards
#misc
scoreboard objectives add nice_actions.stats.misc.animals_bred minecraft.custom:minecraft.animals_bred
scoreboard objectives add nice_actions.stats.misc.eat_cake_slice minecraft.custom:minecraft.eat_cake_slice
scoreboard objectives add nice_actions.stats.misc.enchant_item minecraft.custom:minecraft.enchant_item
scoreboard objectives add nice_actions.stats.misc.fish_caught minecraft.custom:minecraft.fish_caught
scoreboard objectives add nice_actions.stats.misc.raid_trigger minecraft.custom:minecraft.raid_trigger
scoreboard objectives add nice_actions.stats.misc.raid_win minecraft.custom:minecraft.raid_win
scoreboard objectives add nice_actions.stats.misc.traded_with_villager minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add nice_actions.stats.misc.deaths minecraft.custom:minecraft.deaths
scoreboard objectives add nice_actions.stats.misc.sleep_in_bed minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add nice_actions.days_lived.counter dummy

#traveling
scoreboard objectives add nice_actions.stats.travel.boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add nice_actions.stats.travel.climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add nice_actions.stats.travel.crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add nice_actions.stats.travel.fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add nice_actions.stats.travel.happy_ghast minecraft.custom:minecraft.happy_ghast_one_cm
scoreboard objectives add nice_actions.stats.travel.horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add nice_actions.stats.travel.minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add nice_actions.stats.travel.pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add nice_actions.stats.travel.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add nice_actions.stats.travel.strider minecraft.custom:minecraft.strider_one_cm 
scoreboard objectives add nice_actions.stats.travel.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add nice_actions.stats.travel.walk minecraft.custom:minecraft.walk_one_cm

#hostile mob kills
scoreboard objectives add nice_actions.stats.killed.blaze minecraft.killed:minecraft.blaze
scoreboard objectives add nice_actions.stats.killed.bogged minecraft.killed:minecraft.bogged
scoreboard objectives add nice_actions.stats.killed.breeze minecraft.killed:minecraft.breeze
scoreboard objectives add nice_actions.stats.killed.creeper minecraft.killed:minecraft.creeper
scoreboard objectives add nice_actions.stats.killed.creaking minecraft.killed:minecraft.creaking
scoreboard objectives add nice_actions.stats.killed.elder_guardian minecraft.killed:minecraft.elder_guardian
scoreboard objectives add nice_actions.stats.killed.ender_dragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add nice_actions.stats.killed.endermite minecraft.killed:minecraft.endermite
scoreboard objectives add nice_actions.stats.killed.evoker minecraft.killed:minecraft.evoker
scoreboard objectives add nice_actions.stats.killed.ghast minecraft.killed:minecraft.ghast
scoreboard objectives add nice_actions.stats.killed.guardian minecraft.killed:minecraft.guardian
scoreboard objectives add nice_actions.stats.killed.hoglin minecraft.killed:minecraft.hoglin
scoreboard objectives add nice_actions.stats.killed.husk minecraft.killed:minecraft.husk
scoreboard objectives add nice_actions.stats.killed.illusioner minecraft.killed:minecraft.illusioner
scoreboard objectives add nice_actions.stats.killed.magma_cube minecraft.killed:minecraft.magma_cube
scoreboard objectives add nice_actions.stats.killed.phantom minecraft.killed:minecraft.phantom
scoreboard objectives add nice_actions.stats.killed.piglin_brute minecraft.killed:minecraft.piglin_brute
scoreboard objectives add nice_actions.stats.killed.pillager minecraft.killed:minecraft.pillager
scoreboard objectives add nice_actions.stats.killed.ravager minecraft.killed:minecraft.ravager
scoreboard objectives add nice_actions.stats.killed.shulker minecraft.killed:minecraft.shulker
scoreboard objectives add nice_actions.stats.killed.silverfish minecraft.killed:minecraft.silverfish
scoreboard objectives add nice_actions.stats.killed.skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add nice_actions.stats.killed.slime minecraft.killed:minecraft.slime
scoreboard objectives add nice_actions.stats.killed.stray minecraft.killed:minecraft.stray
scoreboard objectives add nice_actions.stats.killed.vex minecraft.killed:minecraft.vex
scoreboard objectives add nice_actions.stats.killed.vindicator minecraft.killed:minecraft.vindicator
scoreboard objectives add nice_actions.stats.killed.warden minecraft.killed:minecraft.warden
scoreboard objectives add nice_actions.stats.killed.witch minecraft.killed:minecraft.witch
scoreboard objectives add nice_actions.stats.killed.wither_skeleton minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add nice_actions.stats.killed.zoglin minecraft.killed:minecraft.zoglin
scoreboard objectives add nice_actions.stats.killed.zombie minecraft.killed:minecraft.zombie
scoreboard objectives add nice_actions.stats.killed.zombie_villager minecraft.killed:minecraft.zombie_villager
scoreboard objectives add nice_actions.stats.killed.wither minecraft.killed:minecraft.wither

#mined blocks
scoreboard objectives add nice_actions.stats.mined.obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add nice_actions.stats.mined.crying_obsidian minecraft.mined:minecraft.crying_obsidian
scoreboard objectives add nice_actions.stats.mined.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add nice_actions.stats.mined.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add nice_actions.stats.mined.copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add nice_actions.stats.mined.lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add nice_actions.stats.mined.emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add nice_actions.stats.mined.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add nice_actions.stats.mined.gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add nice_actions.stats.mined.redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add nice_actions.stats.mined.deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add nice_actions.stats.mined.deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add nice_actions.stats.mined.deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add nice_actions.stats.mined.deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add nice_actions.stats.mined.deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add nice_actions.stats.mined.deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add nice_actions.stats.mined.deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add nice_actions.stats.mined.deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add nice_actions.stats.mined.ancient_debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add nice_actions.stats.mined.nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add nice_actions.stats.mined.nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore

##add enchantment option costs if not present
execute unless data storage eden:settings nice_actions.transfer_enchantments_cost run data modify storage eden:settings nice_actions merge value {transfer_enchantments_cost:30,command_template_costs:"function nice_actions:dialog/command_template/config/costs {transfer_enchantments_cost:$(transfer_enchantments_cost),rtp_cost:$(rtp_cost),sit_cost:$(sit_cost),equip_hat_cost:$(equip_hat_cost),tp_spawn_cost:$(tp_spawn_cost),send_coords_cost:$(send_coords_cost),death_coords_cost:$(death_coords_cost),set_home_cost:$(set_home_cost),tp_home_cost:$(tp_home_cost),villager_info_cost:$(villager_info_cost),horse_info_cost:$(horse_info_cost),share_stats_cost:$(share_stats_cost)}"}
execute unless data storage eden:settings nice_actions.rtp_type run data modify storage eden:settings nice_actions merge value {rtp_type:"spawn",rtp_type_initial:"true",command_template_misc:"function nice_actions:dialog/command_template/config/misc {rtp_type:$(rtp_type),time_format:$(time_format),rtp_radius:$(rtp_radius),rtp_height_min:$(rtp_height_min),rtp_height_max:$(rtp_height_max),rtp_cooldown:$(rtp_cooldown),tp_home_cooldown:$(tp_home_cooldown),tp_spawn_cooldown:$(tp_spawn_cooldown)}"}

##set data pack version
data modify storage eden:datapack nice_actions.version set value "2.0"