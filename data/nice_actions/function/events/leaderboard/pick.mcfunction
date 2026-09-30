scoreboard players set $lb_max nice_actions.technical -1
scoreboard players operation $lb_max nice_actions.technical > @a[scores={nice_actions.events.participate=1,nice_actions.events.counter=1..},tag=!nice_actions.events.ranked] nice_actions.events.counter
execute if score $lb_max nice_actions.technical matches ..0 run return fail

$execute as @a[scores={nice_actions.events.participate=1,nice_actions.events.counter=1..},tag=!nice_actions.events.ranked] if score @s nice_actions.events.counter = $lb_max nice_actions.technical unless entity @a[tag=nice_actions.events.rank$(rank)] run tag @s add nice_actions.events.rank$(rank)
$tag @a[tag=nice_actions.events.rank$(rank)] add nice_actions.events.ranked
