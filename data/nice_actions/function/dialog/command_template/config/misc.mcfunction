$data modify storage eden:settings nice_actions merge value {time_hud_style:$(time_hud_style),rtp_type:$(rtp_type),time_format:$(time_format),rtp_radius:$(rtp_radius),rtp_height_min:$(rtp_height_min),rtp_height_max:$(rtp_height_max),rtp_cooldown:$(rtp_cooldown),tp_home_cooldown:$(tp_home_cooldown),tp_spawn_cooldown:$(tp_spawn_cooldown)}

execute if data storage eden:settings nice_actions{time_format:12} run data modify storage eden:settings nice_actions.time_format_initial set value "false"
execute if data storage eden:settings nice_actions{time_format:24} run data modify storage eden:settings nice_actions.time_format_initial set value "true"

execute if data storage eden:settings nice_actions{rtp_type:spawn} run data modify storage eden:settings nice_actions.rtp_type_initial set value "true"
execute if data storage eden:settings nice_actions{rtp_type:player} run data modify storage eden:settings nice_actions.rtp_type_initial set value "false"

execute if data storage eden:settings nice_actions{time_hud_style:1} run data modify storage eden:settings nice_actions merge value {time_hud_style_1_initial:"true",time_hud_style_2_initial:"false",time_hud_style_3_initial:"false",time_hud_style_4_initial:"false"}
execute if data storage eden:settings nice_actions{time_hud_style:2} run data modify storage eden:settings nice_actions merge value {time_hud_style_1_initial:"false",time_hud_style_2_initial:"true",time_hud_style_3_initial:"false",time_hud_style_4_initial:"false"}
execute if data storage eden:settings nice_actions{time_hud_style:3} run data modify storage eden:settings nice_actions merge value {time_hud_style_1_initial:"false",time_hud_style_2_initial:"false",time_hud_style_3_initial:"true",time_hud_style_4_initial:"false"}
execute if data storage eden:settings nice_actions{time_hud_style:4} run data modify storage eden:settings nice_actions merge value {time_hud_style_1_initial:"false",time_hud_style_2_initial:"false",time_hud_style_3_initial:"false",time_hud_style_4_initial:"true"}

$execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:constant","value":$(rtp_height_min)},"range":{"min":$(rtp_height_max)}} \
run scoreboard players set $temp_height nice_actions.technical $(rtp_height_max)

$execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:constant","value":$(rtp_height_min)},"range":{"min":$(rtp_height_max)}} \
store result storage eden:settings nice_actions.rtp_height_min int 1 \
run scoreboard players operation $temp_height nice_actions.technical -= $1 nice_actions.technical

dialog show @s nice_actions:config/main