$execute store result score $required_amount nice_actions.events.counter run random value 2..$(max_amount)
execute store result score $event_type eden.technical run random value 1..6
scoreboard players set $event_active eden.technical 1

execute if score $event_type eden.technical matches 1 run data modify storage eden:events nice_actions.killing set value "axes"
execute if score $event_type eden.technical matches 2 run data modify storage eden:events nice_actions.killing set value "bow"
execute if score $event_type eden.technical matches 3 run data modify storage eden:events nice_actions.killing set value "crossbow"
execute if score $event_type eden.technical matches 4 run data modify storage eden:events nice_actions.killing set value "mace"
execute if score $event_type eden.technical matches 5 run data modify storage eden:events nice_actions.killing set value "swords"
execute if score $event_type eden.technical matches 6 run data modify storage eden:events nice_actions.killing set value "trident"

execute if score $event_type eden.technical matches 1 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Kill "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Mobs with Axes"}'
execute if score $event_type eden.technical matches 2 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Kill "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Mobs with a Bow"}'
execute if score $event_type eden.technical matches 3 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Kill "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Mobs with a Crossbow"}'
execute if score $event_type eden.technical matches 4 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Kill "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Mobs with a Mace"}'
execute if score $event_type eden.technical matches 5 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Kill "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Mobs with Swords"}'
execute if score $event_type eden.technical matches 6 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Kill "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Mobs with a Trident"}'

execute if score $event_type eden.technical matches 1 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Kill Mobs with Axes"}'
execute if score $event_type eden.technical matches 2 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Kill Mobs with a Bow"}'
execute if score $event_type eden.technical matches 3 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Kill Mobs with a Crossbow"}'
execute if score $event_type eden.technical matches 4 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Kill Mobs with a Mace"}'
execute if score $event_type eden.technical matches 5 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Kill Mobs with Swords"}'
execute if score $event_type eden.technical matches 6 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Kill Mobs with a Trident"}'

function nice_actions:events/start/send_msg with storage eden:events nice_actions
scoreboard objectives setdisplay list nice_actions.events.counter