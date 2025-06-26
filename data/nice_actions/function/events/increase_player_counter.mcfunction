scoreboard players add @s nice_actions.events.counter 1

execute if score @s nice_actions.events.counter < $required_amount nice_actions.events.counter run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ .5 1.3