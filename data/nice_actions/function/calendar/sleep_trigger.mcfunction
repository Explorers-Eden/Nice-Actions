execute store result storage eden:calendar global.day int 1 run scoreboard players add $day nice_actions.calendar 1
function nice_actions:calendar/get_weekday

execute as @a at @s run function nice_actions:calendar/new_day with storage eden:calendar global