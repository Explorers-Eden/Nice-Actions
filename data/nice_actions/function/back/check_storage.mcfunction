$execute unless data storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).back run return run tellraw @s [\
{"text":"▊ ","color":"#FF4A4A","bold":false,"italic":false},\
{"bold":false,"color":"white","italic":false,"fallback":"No previous location.","translate":"text.nice_actions.no_back"}\
]

execute if entity @s[tag=!nice_actions.warmup.done] run return run function nice_actions:warmup/start {action:15}

data modify storage eden:temp player.cost set from storage eden:settings nice_actions.back_cost
data modify storage eden:temp player.uuid set from entity @s UUID
$data modify storage eden:temp player.x set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).back.x
$data modify storage eden:temp player.y set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).back.y
$data modify storage eden:temp player.z set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).back.z
$data modify storage eden:temp player.dimension set from storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).back.dimension

function nice_actions:back/teleport_player with storage eden:temp player

$data remove storage eden:database player.$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3).back
