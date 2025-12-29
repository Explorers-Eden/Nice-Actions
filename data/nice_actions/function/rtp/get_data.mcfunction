$execute store result storage eden:temp rtp.posx int 1 run random value -$(rtp_radius)..$(rtp_radius)
$execute store result storage eden:temp rtp.posz int 1 run random value -$(rtp_radius)..$(rtp_radius)
$execute store result storage eden:temp rtp.ylimit int 1 run random value $(rtp_height_min)..$(rtp_height_max)
data modify storage eden:temp rtp.cost set from storage eden:settings nice_actions.rtp_cost
data modify storage eden:temp rtp.dimension set from entity @s Dimension

function nice_actions:rtp/teleport_player with storage eden:temp rtp