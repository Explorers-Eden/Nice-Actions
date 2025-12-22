schedule function nice_actions:trigger/main 10t

scoreboard players enable @a nice_actions.dialog_trigger
execute as @a store result score @s nice_actions.exp_level run experience query @s levels
execute as @e[type=block_display,tag=job_site] at @s unless entity @e[type=area_effect_cloud,distance=..0.1] run kill @s

execute as @a[scores={nice_actions.dialog_trigger=1}] run function nice_actions:coords_hud/init
execute as @a[scores={nice_actions.dialog_trigger=2}] run function nice_actions:time_hud/init
execute as @a[scores={nice_actions.dialog_trigger=3}] run function nice_actions:rtp/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=4}] run function nice_actions:tp_spawn/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=5}] run function nice_actions:set_home/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=6}] run function nice_actions:tp_home/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=7}] run function nice_actions:sit/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=8}] run function nice_actions:equip_hat/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=9}] run function nice_actions:send_coords/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=10}] run function nice_actions:death_coords/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=11}] run function nice_actions:villager_info/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=12}] run function nice_actions:horse_info/init with storage eden:settings nice_actions
execute as @a[scores={nice_actions.dialog_trigger=13}] run function nice_actions:event_participation/init
execute as @a[scores={nice_actions.dialog_trigger=14}] run function nice_actions:transfer_enchantments/init with storage eden:settings nice_actions

scoreboard players set @a nice_actions.dialog_trigger 0
