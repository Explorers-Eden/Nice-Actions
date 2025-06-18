data modify storage eden:temp player.uuid_0 set from entity @s UUID[0]
data modify storage eden:temp player.uuid_1 set from entity @s UUID[1]
data modify storage eden:temp player.uuid_2 set from entity @s UUID[2]
data modify storage eden:temp player.uuid_3 set from entity @s UUID[3]

function nice_actions:tp_home/check_storage with storage eden:temp player

data remove storage eden:temp player