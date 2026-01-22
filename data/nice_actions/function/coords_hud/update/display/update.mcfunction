$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible true
$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color $(color)

$bossbar set eden:coords_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) name [\
    {"text":"X","color":"light_purple","bold":false,"italic":false},\
    {"text":"Y","color":"green","bold":false,"italic":false},\
    {"text":"Z","color":"aqua","bold":false,"italic":false},\
    {"text":": ","color":"dark_gray","bold":false,"italic":false},\
    {"bold":false,"color":"white","italic":false,"text":"$(posx) $(posy) $(posz)"},\
    {"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
    {"bold":false,"color":"white","italic":false,"text":"$(direction)"}\
]