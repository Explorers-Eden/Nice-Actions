scoreboard players operation $raw_hours nice_actions.technical = $raw_daytime nice_actions.technical
scoreboard players operation $raw_hours nice_actions.technical /= $5 nice_actions.technical
scoreboard players operation $raw_hours nice_actions.technical *= $18 nice_actions.technical
scoreboard players operation $raw_hours nice_actions.technical /= $60 nice_actions.technical
scoreboard players operation $raw_minutes nice_actions.technical = $raw_hours nice_actions.technical
scoreboard players operation $raw_hours nice_actions.technical /= $60 nice_actions.technical

scoreboard players operation $24_hour nice_actions.calendar = $raw_hours nice_actions.technical
scoreboard players operation $24_hour nice_actions.calendar += $6 nice_actions.technical

scoreboard players operation $raw_hours nice_actions.technical *= $60 nice_actions.technical

scoreboard players operation $minute nice_actions.calendar = $raw_minutes nice_actions.technical
scoreboard players operation $minute nice_actions.calendar -= $raw_hours nice_actions.technical

execute if score $24_hour nice_actions.calendar matches 24.. run scoreboard players operation $24_hour nice_actions.calendar -= $24 nice_actions.technical

execute if score $24_hour nice_actions.calendar matches 0..11 run data modify storage eden:calendar global.meridiem set value "AM"
execute if score $24_hour nice_actions.calendar matches 12..23 run data modify storage eden:calendar global.meridiem set value "PM"

scoreboard players operation $12_hour nice_actions.calendar = $24_hour nice_actions.calendar
execute if score $12_hour nice_actions.calendar matches 13.. run scoreboard players operation $12_hour nice_actions.calendar -= $12 nice_actions.technical