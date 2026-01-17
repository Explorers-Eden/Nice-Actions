data remove storage eden:settings nice_actions
data remove storage eden:datapack nice_actions
data remove storage eden:calendar global

bossbar remove eden:time_hud

scoreboard objectives remove nice_actions.player.sleeping
scoreboard objectives remove nice_actions.technical
scoreboard objectives remove nice_actions.dialog_trigger
scoreboard objectives remove nice_actions.stats_trigger
scoreboard objectives remove nice_actions.exp_level
scoreboard objectives remove nice_actions.rtp.cooldown
scoreboard objectives remove nice_actions.rtp.timer
scoreboard objectives remove nice_actions.tp_spawn.cooldown
scoreboard objectives remove nice_actions.tp_spawn.timer
scoreboard objectives remove nice_actions.tp_home.cooldown
scoreboard objectives remove nice_actions.tp_home.timer
scoreboard objectives remove nice_actions.sit
scoreboard objectives remove nice_actions.has_died_today
scoreboard objectives remove nice_actions.hud.coords
scoreboard objectives remove nice_actions.events.participate
scoreboard objectives remove nice_actions.events.counter
scoreboard objectives remove nice_actions.calendar
scoreboard objectives remove nice_actions.has_slept
scoreboard objectives remove nice_actions.stats.misc.animals_bred
scoreboard objectives remove nice_actions.stats.misc.eat_cake_slice
scoreboard objectives remove nice_actions.stats.misc.enchant_item
scoreboard objectives remove nice_actions.stats.misc.fish_caught
scoreboard objectives remove nice_actions.stats.misc.raid_trigger
scoreboard objectives remove nice_actions.stats.misc.raid_win
scoreboard objectives remove nice_actions.stats.misc.traded_with_villager
scoreboard objectives remove nice_actions.stats.misc.deaths
scoreboard objectives remove nice_actions.stats.misc.sleep_in_bed
scoreboard objectives remove nice_actions.days_lived.counter
scoreboard objectives remove nice_actions.stats.travel.boat
scoreboard objectives remove nice_actions.stats.travel.climb
scoreboard objectives remove nice_actions.stats.travel.crouch
scoreboard objectives remove nice_actions.stats.travel.fly
scoreboard objectives remove nice_actions.stats.travel.happy_ghast
scoreboard objectives remove nice_actions.stats.travel.horse
scoreboard objectives remove nice_actions.stats.travel.minecart
scoreboard objectives remove nice_actions.stats.travel.pig
scoreboard objectives remove nice_actions.stats.travel.sprint
scoreboard objectives remove nice_actions.stats.travel.strider
scoreboard objectives remove nice_actions.stats.travel.swim
scoreboard objectives remove nice_actions.stats.travel.walk
scoreboard objectives remove nice_actions.stats.killed.blaze
scoreboard objectives remove nice_actions.stats.killed.bogged
scoreboard objectives remove nice_actions.stats.killed.breeze
scoreboard objectives remove nice_actions.stats.killed.creeper
scoreboard objectives remove nice_actions.stats.killed.creaking
scoreboard objectives remove nice_actions.stats.killed.elder_guardian
scoreboard objectives remove nice_actions.stats.killed.ender_dragon
scoreboard objectives remove nice_actions.stats.killed.endermite
scoreboard objectives remove nice_actions.stats.killed.evoker
scoreboard objectives remove nice_actions.stats.killed.ghast
scoreboard objectives remove nice_actions.stats.killed.guardian
scoreboard objectives remove nice_actions.stats.killed.hoglin
scoreboard objectives remove nice_actions.stats.killed.husk
scoreboard objectives remove nice_actions.stats.killed.illusioner
scoreboard objectives remove nice_actions.stats.killed.magma_cube
scoreboard objectives remove nice_actions.stats.killed.phantom
scoreboard objectives remove nice_actions.stats.killed.piglin_brute
scoreboard objectives remove nice_actions.stats.killed.pillager
scoreboard objectives remove nice_actions.stats.killed.ravager
scoreboard objectives remove nice_actions.stats.killed.shulker
scoreboard objectives remove nice_actions.stats.killed.silverfish
scoreboard objectives remove nice_actions.stats.killed.skeleton
scoreboard objectives remove nice_actions.stats.killed.slime
scoreboard objectives remove nice_actions.stats.killed.stray
scoreboard objectives remove nice_actions.stats.killed.vex
scoreboard objectives remove nice_actions.stats.killed.vindicator
scoreboard objectives remove nice_actions.stats.killed.warden
scoreboard objectives remove nice_actions.stats.killed.witch
scoreboard objectives remove nice_actions.stats.killed.wither_skeleton
scoreboard objectives remove nice_actions.stats.killed.zoglin
scoreboard objectives remove nice_actions.stats.killed.zombie
scoreboard objectives remove nice_actions.stats.killed.zombie_villager
scoreboard objectives remove nice_actions.stats.killed.wither
scoreboard objectives remove nice_actions.stats.mined.obsidian
scoreboard objectives remove nice_actions.stats.mined.crying_obsidian
scoreboard objectives remove nice_actions.stats.mined.coal_ore
scoreboard objectives remove nice_actions.stats.mined.iron_ore
scoreboard objectives remove nice_actions.stats.mined.copper_ore
scoreboard objectives remove nice_actions.stats.mined.lapis_ore
scoreboard objectives remove nice_actions.stats.mined.emerald_ore
scoreboard objectives remove nice_actions.stats.mined.diamond_ore
scoreboard objectives remove nice_actions.stats.mined.gold_ore
scoreboard objectives remove nice_actions.stats.mined.redstone_ore
scoreboard objectives remove nice_actions.stats.mined.deepslate_coal_ore
scoreboard objectives remove nice_actions.stats.mined.deepslate_iron_ore
scoreboard objectives remove nice_actions.stats.mined.deepslate_copper_ore
scoreboard objectives remove nice_actions.stats.mined.deepslate_lapis_ore
scoreboard objectives remove nice_actions.stats.mined.deepslate_emerald_ore
scoreboard objectives remove nice_actions.stats.mined.deepslate_diamond_ore
scoreboard objectives remove nice_actions.stats.mined.deepslate_gold_ore
scoreboard objectives remove nice_actions.stats.mined.deepslate_redstone_ore
scoreboard objectives remove nice_actions.stats.mined.ancient_debris
scoreboard objectives remove nice_actions.stats.mined.nether_gold_ore
scoreboard objectives remove nice_actions.stats.mined.nether_quartz_ore

playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2
tellraw @s [\
    {"color":"red","text":"▊ "},\
    {"color":"white","text":"Files for Nice Actions have been removed."}\
]