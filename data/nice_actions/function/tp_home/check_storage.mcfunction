$execute unless data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":true,"italic":false},\
{"bold":false,"color":"white","italic":false,"fallback":"No Home set yet.","translate":"text.nice_actions.no_home"}\
]

data modify storage eden:temp player.cost set from storage eden:settings nice_actions.tp_home_cost
data modify storage eden:temp player.uuid set from entity @s UUID
$data modify storage eden:temp player.x set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home.x
$data modify storage eden:temp player.y set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home.y
$data modify storage eden:temp player.z set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home.z
$data modify storage eden:temp player.dimension set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).home.dimension

function nice_actions:tp_home/teleport_player with storage eden:temp player