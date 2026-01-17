scoreboard players set $players_sleeping nice_actions.technical 0

data modify storage eden:settings nice_actions merge value {\
time_hud_style:1,\
time_hud_style_1_initial:"true",\
time_hud_style_2_initial:"false",\
time_hud_style_3_initial:"false",\
time_hud_style_4_initial:"false",\
transfer_enchantments_cost:30,\
rtp_type: "spawn",\
rtp_type_initial: "true",\
time_format:12,\
time_format_initial:"false",\
rtp_radius:1500,\
rtp_height_min:90,\
rtp_height_max:128,\
rtp_cooldown:600,\
tp_home_cooldown:180,\
tp_spawn_cooldown:180,\
rtp_cost:30,\
sit_cost:0,\
equip_hat_cost:0,\
tp_spawn_cost:5,\
send_coords_cost:0,\
death_coords_cost:5,\
set_home_cost:1,\
tp_home_cost:3,\
villager_info_cost:1,\
horse_info_cost:1,\
share_stats_cost:1,\
    events:{\
        misc:{\
            monday:"enabled",\
            monday_initial:"false",\
            tuesday:"enabled",\
            tuesday_initial:"false",\
            wednesday:"enabled",\
            wednesday_initial:"false",\
            thursday:"enabled",\
            thursday_initial:"false",\
            friday:"enabled",\
            friday_initial:"false",\
            saturday:"disabled",\
            saturday_initial:"true",\
            sunday:"disabled",\
            sunday_initial:"true",\
            event_msg:"title",\
            event_msg_actionbar_initial:"false",\
            event_msg_chat_initial:"false",\
        },\
        fishing:{\
            loot_table:'nice_actions:gameplay/events/fishing',\
            max_amount:48,\
            chance:0.1,\
            chance_initial:10,\
            type:fishing,\
            icon:fishing_rod\
        },\
        killing:{\
            loot_table:'nice_actions:gameplay/events/killing',\
            max_amount:96,\
            chance:0.09,\
            chance_initial:9,\
            type:killing,\
            icon:iron_sword\
        },\
        breeding:{\
            loot_table:'nice_actions:gameplay/events/breeding',\
            max_amount:24,\
            chance:0.08,\
            chance_initial:8,\
            type:breeding,\
            icon:wheat\
        },\
        brewing:{\
            loot_table:'nice_actions:gameplay/events/brewing',\
            max_amount:48,\
            chance:0.07,\
            chance_initial:7,\
            type:brewing,\
            icon:potion\
        },\
        consuming:{\
            loot_table:'nice_actions:gameplay/events/consuming',\
            max_amount:96,\
            chance:0.06,\
            chance_initial:6,\
            type:consuming,\
            icon:bread\
        }\
    }\
}

data modify storage eden:settings nice_actions merge value {\
    command_template_costs:"function nice_actions:dialog/command_template/config/costs {transfer_enchantments_cost:$(transfer_enchantments_cost),rtp_cost:$(rtp_cost),sit_cost:$(sit_cost),equip_hat_cost:$(equip_hat_cost),tp_spawn_cost:$(tp_spawn_cost),send_coords_cost:$(send_coords_cost),death_coords_cost:$(death_coords_cost),set_home_cost:$(set_home_cost),tp_home_cost:$(tp_home_cost),villager_info_cost:$(villager_info_cost),horse_info_cost:$(horse_info_cost),share_stats_cost:$(share_stats_cost)}",\
    command_template_misc:"function nice_actions:dialog/command_template/config/misc {time_hud_style:$(time_hud_style),rtp_type:$(rtp_type),time_format:$(time_format),rtp_radius:$(rtp_radius),rtp_height_min:$(rtp_height_min),rtp_height_max:$(rtp_height_max),rtp_cooldown:$(rtp_cooldown),tp_home_cooldown:$(tp_home_cooldown),tp_spawn_cooldown:$(tp_spawn_cooldown)}",\
        events:{\
            misc:{\
                command_template:"function nice_actions:dialog/command_template/config/events_misc {monday:$(monday),tuesday:$(tuesday),wednesday:$(wednesday),thursday:$(thursday),friday:$(friday),saturday:$(saturday),sunday:$(sunday),event_msg:$(event_msg)}"\
            },\
            fishing:{\
                command_template:"function nice_actions:dialog/command_template/config/events_type {type:fishing,loot_table:'$(loot_table)',max_amount:$(max_amount),chance:$(chance)}"\
            },\
            killing:{\
                command_template:"function nice_actions:dialog/command_template/config/events_type {type:killing,loot_table:'$(loot_table)',max_amount:$(max_amount),chance:$(chance)}"\
            },\
            breeding:{\
                command_template:"function nice_actions:dialog/command_template/config/events_type {type:breeding,loot_table:'$(loot_table)',max_amount:$(max_amount),chance:$(chance)}"\
            },\
            brewing:{\
                command_template:"function nice_actions:dialog/command_template/config/events_type {type:brewing,loot_table:'$(loot_table)',max_amount:$(max_amount),chance:$(chance)}"\
            },\
            consuming:{\
                command_template:"function nice_actions:dialog/command_template/config/events_type {type:consuming,loot_table:'$(loot_table)',max_amount:$(max_amount),chance:$(chance)}"\
            },\
        }\
}