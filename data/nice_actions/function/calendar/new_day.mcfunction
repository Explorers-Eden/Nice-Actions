$title @s actionbar [{"bold":false,"color":"dark_gray","italic":false,"text":"- "},{"bold":false,"color":"gray","italic":false,"text":"$(weekday)"},{"bold":false,"color":"gray","italic":false,"text":": "},{"bold":false,"color":"gray","italic":false,"text":"$(month_name) $(day), $(year)"},{"bold":false,"color":"dark_gray","italic":false,"text":" -"}]
#$tellraw @a [{"bold":false,"color":"dark_gray","italic":false,"text":"- "},{"bold":false,"color":"gray","italic":false,"text":"$(weekday)"},{"bold":false,"color":"gray","italic":false,"text":": "},{"bold":false,"color":"gray","italic":false,"text":"$(month_name) $(day), $(year)"},{"bold":false,"color":"dark_gray","italic":false,"text":" -"}]
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 1

scoreboard players add @a nice_actions.days_lived.counter 1

scoreboard players reset * nice_actions.has_slept
scoreboard players reset * nice_actions.has_died_today
scoreboard players reset $sleep_triggered eden.technical
scoreboard players reset $sleep_msg_scheduled eden.technical