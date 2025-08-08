scoreboard objectives remove nice_actions.events.counter
scoreboard objectives add nice_actions.events.counter dummy

scoreboard players set $event_active eden.technical 0
scoreboard players set $event_timer eden.technical 0

data modify storage eden:events nice_actions set value {\
breeding:"none",\
brewing:"none",\
consuming:"none",\
fishing:"none",\
killing:"none"\
}