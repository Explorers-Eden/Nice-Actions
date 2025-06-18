##default technical scoreboard
scoreboard objectives add eden.technical dummy

##add additional scoreboards
scoreboard objectives add nice_actions.dialog_trigger trigger {"bold":false,"color":"gold","italic":false,"text":"Nice Actions"}
scoreboard objectives add nice_actions.exp_level dummy
scoreboard objectives add nice_actions.rtp.cooldown dummy
scoreboard objectives add nice_actions.rtp.timer dummy
scoreboard objectives add nice_actions.tp_spawn.cooldown dummy
scoreboard objectives add nice_actions.tp_spawn.timer dummy
scoreboard objectives add nice_actions.tp_home.cooldown dummy
scoreboard objectives add nice_actions.tp_home.timer dummy
scoreboard objectives add nice_actions.sit dummy
scoreboard objectives add nice_actions.days_lived.counter dummy
scoreboard objectives add nice_actions.has_died_today deathCount
scoreboard objectives add nice_actions.hud.coords dummy
scoreboard objectives add nice_actions.hud.time dummy

##calendar/time scoreboards
scoreboard objectives add nice_actions.calendar dummy
scoreboard objectives add nice_actions.has_slept minecraft.custom:minecraft.sleep_in_bed
scoreboard players reset * nice_actions.has_slept
scoreboard players reset $sleep_triggered eden.technical
scoreboard players reset $sleep_msg_scheduled eden.technical
scoreboard players set $5 eden.technical 5
scoreboard players set $6 eden.technical 6
scoreboard players set $12 eden.technical 12
scoreboard players set $18 eden.technical 18
scoreboard players set $24 eden.technical 24
scoreboard players set $60 eden.technical 60
execute unless score $day nice_actions.calendar matches 1.. run scoreboard players set $day nice_actions.calendar 1
execute unless score $month nice_actions.calendar matches 1.. run scoreboard players set $month nice_actions.calendar 1
execute unless score $year nice_actions.calendar matches 1.. run scoreboard players set $year nice_actions.calendar 1
execute unless data storage eden:calendar global.weekday run data modify storage eden:calendar global.weekday set value "Monday"

##add default values
execute unless data storage eden:settings nice_actions run function nice_actions:default_values