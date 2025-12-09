data remove storage eden:temp death_coords.grave

data modify storage eden:temp death_coords.grave.uuid_0 set from entity @s UUID[0]
data modify storage eden:temp death_coords.grave.uuid_1 set from entity @s UUID[1]
data modify storage eden:temp death_coords.grave.uuid_2 set from entity @s UUID[2]
data modify storage eden:temp death_coords.grave.uuid_3 set from entity @s UUID[3]

function nice_actions:death_coords/last_grave/get_data with storage eden:temp death_coords.grave