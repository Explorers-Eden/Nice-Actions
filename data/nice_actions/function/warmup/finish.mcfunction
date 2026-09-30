tag @s remove nice_actions.warmup.active
tag @s add nice_actions.warmup.done
title @s actionbar ""

execute if score @s nice_actions.warmup.action matches 3 run function nice_actions:rtp/init with storage eden:settings nice_actions
execute if score @s nice_actions.warmup.action matches 4 run function nice_actions:tp_spawn/init with storage eden:settings nice_actions
execute if score @s nice_actions.warmup.action matches 6 run function nice_actions:tp_home/init with storage eden:settings nice_actions
execute if score @s nice_actions.warmup.action matches 15 run function nice_actions:back/init with storage eden:settings nice_actions

tag @s remove nice_actions.warmup.done
function nice_actions:warmup/clear
