data modify storage eden:temp huds.12_hour set from storage eden:calendar global.12_hour
data modify storage eden:temp huds.24_hour set from storage eden:calendar global.24_hour
data modify storage eden:temp huds.minute set from storage eden:calendar global.minute
data modify storage eden:temp huds.meridiem set from storage eden:calendar global.meridiem
data modify storage eden:temp huds.day set from storage eden:calendar global.day
data modify storage eden:temp huds.month_name set from storage eden:calendar global.month_name
data modify storage eden:temp huds.month_name_short set from storage eden:calendar global.month_name_short
data modify storage eden:temp huds.year set from storage eden:calendar global.year
data modify storage eden:temp huds.season set from storage eden:calendar global.season
data modify storage eden:temp huds.weekday set from storage eden:calendar global.weekday
data modify storage eden:temp huds.weekday_color set from storage eden:calendar global.weekday_color
data modify storage eden:temp huds.weekday_short set from storage eden:calendar global.weekday_short

execute if data storage eden:calendar global{season:"Winter"} run data modify storage eden:temp huds.season_color set value "B8F8FF"
execute if data storage eden:calendar global{season:"Spring"} run data modify storage eden:temp huds.season_color set value "B2FF91"
execute if data storage eden:calendar global{season:"Summer"} run data modify storage eden:temp huds.season_color set value "FFDD54"
execute if data storage eden:calendar global{season:"Autumn"} run data modify storage eden:temp huds.season_color set value "BA652D"

execute if predicate nice_actions:weather/clear if score $24_hour nice_actions.calendar matches 6..17 run data modify storage eden:temp huds.weather set value {"bold":false,"color":"#FFFC96","italic":false,"text":"☀ "}
execute if predicate nice_actions:weather/clear unless score $24_hour nice_actions.calendar matches 6..17 run data modify storage eden:temp huds.weather set value {"bold":false,"color":"#FFFC96","italic":false,"text":"⭐ "}
execute if predicate nice_actions:weather/rain run data modify storage eden:temp huds.weather set value {"bold":false,"color":"#96D5FF","italic":false,"text":"🌧 "}
execute if predicate nice_actions:weather/thunder run data modify storage eden:temp huds.weather set value {"bold":false,"color":"#FFF82E","italic":false,"text":"⚡ "}

execute if data storage eden:settings nice_actions{time_format:12} run function nice_actions:calendar/update_bossbar/exec_12 with storage eden:temp huds
execute if data storage eden:settings nice_actions{time_format:24} run function nice_actions:calendar/update_bossbar/exec_24 with storage eden:temp huds

data remove storage eden:temp huds