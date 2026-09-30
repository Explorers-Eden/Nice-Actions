execute unless entity @a[scores={nice_actions.events.participate=1,nice_actions.events.counter=1..}] run return fail

tag @a remove nice_actions.events.ranked
tag @a remove nice_actions.events.rank1
tag @a remove nice_actions.events.rank2
tag @a remove nice_actions.events.rank3

function nice_actions:events/leaderboard/pick {rank:1}
function nice_actions:events/leaderboard/pick {rank:2}
function nice_actions:events/leaderboard/pick {rank:3}

function nice_actions:events/leaderboard/announce

tag @a remove nice_actions.events.ranked
tag @a remove nice_actions.events.rank1
tag @a remove nice_actions.events.rank2
tag @a remove nice_actions.events.rank3
