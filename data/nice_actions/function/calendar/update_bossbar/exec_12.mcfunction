$bossbar set eden:time_hud value $(24_hour)

execute if score $24_hour nice_actions.calendar matches 6..17 run bossbar set eden:time_hud color yellow
execute unless score $24_hour nice_actions.calendar matches 6..17 run bossbar set eden:time_hud color blue

##Style 1
$execute if data storage eden:settings nice_actions{time_hud_style:1} if score $players_sleeping nice_actions.technical matches 1.. run return run bossbar set eden:time_hud name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(weekday_short)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(players_sleeping) Zzz","underlined":false}\
]

$execute if data storage eden:settings nice_actions{time_hud_style:1} if score $players_sleeping nice_actions.technical matches ..0 run return run bossbar set eden:time_hud name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(weekday_short)"}\
]


## Style 2
$execute if data storage eden:settings nice_actions{time_hud_style:2} if score $players_sleeping nice_actions.technical matches 1.. run return run bossbar set eden:time_hud name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name_short) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(weekday)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(players_sleeping) Zzz","underlined":false}\
]

$execute if data storage eden:settings nice_actions{time_hud_style:2} if score $players_sleeping nice_actions.technical matches ..0 run return run bossbar set eden:time_hud name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name_short) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(weekday)"}\
]


## Style 3
$execute if data storage eden:settings nice_actions{time_hud_style:3} if score $players_sleeping nice_actions.technical matches 1.. run return run bossbar set eden:time_hud name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(players_sleeping) Zzz","underlined":false}\
]

$execute if data storage eden:settings nice_actions{time_hud_style:3} if score $players_sleeping nice_actions.technical matches ..0 run return run bossbar set eden:time_hud name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name) $(day), $(year)"}\
]


## Style 4
$execute if data storage eden:settings nice_actions{time_hud_style:4} if score $players_sleeping nice_actions.technical matches 1.. run return run bossbar set eden:time_hud name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(weekday): "},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(players_sleeping) Zzz","underlined":false}\
]

$execute if data storage eden:settings nice_actions{time_hud_style:4} if score $players_sleeping nice_actions.technical matches ..0 run return run bossbar set eden:time_hud name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"white","italic":false,"text":"$(weekday): "},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name) $(day), $(year)"},\
]