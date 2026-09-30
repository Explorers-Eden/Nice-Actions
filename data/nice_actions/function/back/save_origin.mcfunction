data modify storage eden:temp back.uuid_0 set from entity @s UUID[0]
data modify storage eden:temp back.uuid_1 set from entity @s UUID[1]
data modify storage eden:temp back.uuid_2 set from entity @s UUID[2]
data modify storage eden:temp back.uuid_3 set from entity @s UUID[3]

function nice_actions:back/save_origin_exec with storage eden:temp back

data remove storage eden:temp back
