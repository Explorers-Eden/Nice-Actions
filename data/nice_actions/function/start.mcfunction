##stagger the repeating loops so they do not all run on the same tick
schedule function nice_actions:coords_hud/update/init 3t
schedule function nice_actions:calendar/init 4t
schedule function nice_actions:sit/run 4t
schedule function nice_actions:trigger/main 4t
schedule function nice_actions:timer/init 10t
schedule function nice_actions:events/init 15t
schedule function nice_actions:trigger/stats 16t
schedule function nice_actions:events/bossbar/init 17t
