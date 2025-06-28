$data modify storage eden:settings nice_actions merge value {time_format:$(time_format),rtp_radius:$(rtp_radius),rtp_height_min:$(rtp_height_min),rtp_height_max:$(rtp_height_max),rtp_cooldown:$(rtp_cooldown),tp_home_cooldown:$(tp_home_cooldown),tp_spawn_cooldown:$(tp_spawn_cooldown)}

execute if data storage eden:settings nice_actions{time_format:"12"} run data modify storage eden:settings nice_actions.time_format_initial set value "false"
execute unless data storage eden:settings nice_actions{time_format:"24"} run data modify storage eden:settings nice_actions.time_format_initial set value "true"

$execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:constant","value":$(rtp_height_min)},"range":{"min":$(rtp_height_max)}} \
run scoreboard players set $temp_height eden.technical $(rtp_height_max)

$execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:constant","value":$(rtp_height_min)},"range":{"min":$(rtp_height_max)}} \
store result storage eden:settings nice_actions.rtp_height_min int 1 \
run scoreboard players operation $temp_height eden.technical -= $1 eden.technical

dialog show @s nice_actions:config/main