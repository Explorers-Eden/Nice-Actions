$data modify storage eden:settings nice_actions.events.misc merge value {monday:$(monday),tuesday:$(tuesday),wednesday:$(wednesday),thursday:$(thursday),friday:$(friday),saturday:$(saturday),sunday:$(sunday),event_msg:$(event_msg)}

execute if data storage eden:settings nice_actions.events.misc{event_msg:"chat"} run data modify storage eden:settings nice_actions.events.misc.event_msg_chat_initial set value "true"
execute if data storage eden:settings nice_actions.events.misc{event_msg:"chat"} run data modify storage eden:settings nice_actions.events.misc.event_msg_actionbar_initial set value "false"
execute if data storage eden:settings nice_actions.events.misc{event_msg:"actionbar"} run data modify storage eden:settings nice_actions.events.misc.event_msg_chat_initial set value "false"
execute if data storage eden:settings nice_actions.events.misc{event_msg:"actionbar"} run data modify storage eden:settings nice_actions.events.misc.event_msg_actionbar_initial set value "true"
execute if data storage eden:settings nice_actions.events.misc{event_msg:"title"} run data modify storage eden:settings nice_actions.events.misc.event_msg_chat_initial set value "false"
execute if data storage eden:settings nice_actions.events.misc{event_msg:"title"} run data modify storage eden:settings nice_actions.events.misc.event_msg_actionbar_initial set value "false"

execute if data storage eden:settings nice_actions.events.misc{monday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.monday_initial set value "false"
execute unless data storage eden:settings nice_actions.events.misc{monday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.monday_initial set value "true"

execute if data storage eden:settings nice_actions.events.misc{tuesday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.tuesday_initial set value "false"
execute unless data storage eden:settings nice_actions.events.misc{tuesday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.tuesday_initial set value "true"

execute if data storage eden:settings nice_actions.events.misc{wednesday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.wednesday_initial set value "false"
execute unless data storage eden:settings nice_actions.events.misc{wednesday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.wednesday_initial set value "true"

execute if data storage eden:settings nice_actions.events.misc{thursday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.thursday_initial set value "false"
execute unless data storage eden:settings nice_actions.events.misc{thursday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.thursday_initial set value "true"

execute if data storage eden:settings nice_actions.events.misc{friday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.friday_initial set value "false"
execute unless data storage eden:settings nice_actions.events.misc{friday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.friday_initial set value "true"

execute if data storage eden:settings nice_actions.events.misc{saturday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.saturday_initial set value "false"
execute unless data storage eden:settings nice_actions.events.misc{saturday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.saturday_initial set value "true"

execute if data storage eden:settings nice_actions.events.misc{sunday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.sunday_initial set value "false"
execute unless data storage eden:settings nice_actions.events.misc{sunday:"enabled"} run data modify storage eden:settings nice_actions.events.misc.sunday_initial set value "true"

dialog show @s nice_actions:config/events