$execute store result score $required_amount nice_actions.events.counter run random value 4..$(max_amount)
execute store result score $event_type eden.technical run random value 1..4
scoreboard players set $event_active eden.technical 1

execute if score $event_type eden.technical matches 1 run data modify storage eden:events nice_actions.fishing set value "cod"
execute if score $event_type eden.technical matches 2 run data modify storage eden:events nice_actions.fishing set value "pufferfish"
execute if score $event_type eden.technical matches 3 run data modify storage eden:events nice_actions.fishing set value "salmon"
execute if score $event_type eden.technical matches 4 run data modify storage eden:events nice_actions.fishing set value "tropical_fish"

execute if score $event_type eden.technical matches 1 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Fish "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Cod"}'
execute if score $event_type eden.technical matches 2 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Fish "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Pufferfish"}'
execute if score $event_type eden.technical matches 3 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Fish "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Salmon"}'
execute if score $event_type eden.technical matches 4 run data modify storage eden:events nice_actions.msg set value '{"bold":false,"color":"white","italic":false,"text":"Fish "},{"bold":true,"color":"white","italic":false,"score":{"name":"$required_amount","objective":"nice_actions.events.counter"}},{"bold":false,"color":"white","italic":false,"text":" Tropical Fish"}'

execute if score $event_type eden.technical matches 1 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Fish Cod"}'
execute if score $event_type eden.technical matches 2 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Fish Pufferfish"}'
execute if score $event_type eden.technical matches 3 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Fish Salmon"}'
execute if score $event_type eden.technical matches 4 run data modify storage eden:events nice_actions.title set value '{"bold":false,"color":"white","italic":false,"text":"Fish Tropical Fish"}'

function nice_actions:events/start/send_msg with storage eden:events nice_actions
scoreboard objectives setdisplay list nice_actions.events.counter