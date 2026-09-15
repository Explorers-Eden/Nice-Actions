execute store result score $total_minutes nice_actions.technical run compute default integer nice_actions:calendar/total_minutes

execute store result score $minute nice_actions.calendar run compute default integer nice_actions:calendar/minute

execute store result score $24_hour nice_actions.calendar run compute default integer nice_actions:calendar/hour_24

execute if score $24_hour nice_actions.calendar matches 0..11 run data modify storage eden:calendar global.meridiem set value "AM"
execute if score $24_hour nice_actions.calendar matches 12..23 run data modify storage eden:calendar global.meridiem set value "PM"

execute if score $24_hour nice_actions.calendar matches 12 unless score $day_had_noon nice_actions.calendar matches 1 run scoreboard players set $day_had_noon nice_actions.calendar 1

scoreboard players operation $12_hour nice_actions.calendar = $24_hour nice_actions.calendar
execute if score $12_hour nice_actions.calendar matches 13.. run scoreboard players operation $12_hour nice_actions.calendar -= $12 nice_actions.technical
