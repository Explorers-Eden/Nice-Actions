execute store result storage eden:calendar global.24_hour int 1 run scoreboard players get $24_hour nice_actions.calendar
execute store result storage eden:calendar global.12_hour int 1 run scoreboard players get $12_hour nice_actions.calendar
execute store result storage eden:calendar global.minute int 1 run scoreboard players get $minute nice_actions.calendar
execute store result storage eden:calendar global.day int 1 run scoreboard players get $day nice_actions.calendar
execute store result storage eden:calendar global.month int 1 run scoreboard players get $month nice_actions.calendar
execute store result storage eden:calendar global.year int 1 run scoreboard players get $year nice_actions.calendar

execute if score $12_hour nice_actions.calendar matches 0..9 run function nice_actions:calendar/pad/hour_12
execute if score $24_hour nice_actions.calendar matches 0..9 run function nice_actions:calendar/pad/hour_24
execute if score $minute nice_actions.calendar matches 0..9 run function nice_actions:calendar/pad/minute