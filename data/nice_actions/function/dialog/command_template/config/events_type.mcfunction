$data modify storage eden:settings nice_actions.events.$(type) merge value {loot_table:'$(loot_table)',max_amount:$(max_amount)}

$data modify storage eden:settings nice_actions.events.$(type).chance_initial set value $(chance)
$execute store result storage eden:settings nice_actions.events.$(type).chance float 0.01 run data get storage eden:settings nice_actions.events.$(type).chance_initial

dialog show @s nice_actions:config/events