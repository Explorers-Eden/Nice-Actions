tag @s[nbt={OnGround:1b}] add sits_down
summon block_display ~ ~ ~ {Tags:[sit_display]}
ride @s mount @n[type=block_display,tag=sit_display,distance=..1]

advancement grant @s only eden:adventure/take_a_seat

$experience add @s -$(sit_cost) levels