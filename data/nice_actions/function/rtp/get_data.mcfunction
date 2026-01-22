$execute store result storage eden:temp rtp.posx int 1 run random value -$(rtp_radius)..$(rtp_radius)
data modify storage eden:temp rtp.posy set value "0"
$execute store result storage eden:temp rtp.posz int 1 run random value -$(rtp_radius)..$(rtp_radius)
$execute store result storage eden:temp rtp.ylimit int 1 run random value $(rtp_height_min)..$(rtp_height_max)
data modify storage eden:temp rtp.cost set from storage eden:settings nice_actions.rtp_cost

execute if data storage eden:settings nice_actions{rtp_type:"player"} run data modify storage eden:temp rtp.dimension set from entity @s Dimension

execute if data storage eden:settings nice_actions{rtp_type:"spawn"} run data modify storage eden:temp rtp.dimension set from storage eden:settings nice_actions.spawn_dimension
execute if data storage eden:settings nice_actions{rtp_type:"spawn"} run data modify storage eden:temp rtp.posx set from storage eden:settings nice_actions.spawn_x
execute if data storage eden:settings nice_actions{rtp_type:"spawn"} run data modify storage eden:temp rtp.posy set from storage eden:settings nice_actions.spawn_y
execute if data storage eden:settings nice_actions{rtp_type:"spawn"} run data modify storage eden:temp rtp.posz set from storage eden:settings nice_actions.spawn_z

function nice_actions:rtp/teleport_player with storage eden:temp rtp