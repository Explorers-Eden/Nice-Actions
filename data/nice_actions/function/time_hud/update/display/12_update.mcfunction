$bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible true
$bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) value $(24_hour)

$execute if score $24_hour nice_actions.calendar matches 6..17 run bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color yellow
$execute unless score $24_hour nice_actions.calendar matches 6..17 run bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color blue

$bossbar set eden:time_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) name [\
$(weather),\
{"bold":false,"color":"white","italic":false,"text":"$(12_hour):$(minute) $(meridiem)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#$(season_color)","italic":false,"text":"$(month_name) $(day), $(year)"}\
]

data remove storage eden:temp huds