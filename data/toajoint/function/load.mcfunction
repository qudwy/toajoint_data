# --- colorful names --- #
team add overworld
team add fire
team add water
team add air
team add stone
team add earth
team add ice
team modify overworld color gray
team modify fire color red
team modify water color blue
team modify air color green
team modify stone color yellow
team modify earth color light_purple
team modify ice color white

# --- scoreboard objectives --- #
scoreboard objectives add a.uuid dummy
scoreboard objectives add b.uuid dummy
scoreboard objectives add c.uuid dummy
scoreboard objectives add d.uuid dummy
scoreboard objectives add a.owner dummy
scoreboard objectives add b.owner dummy
scoreboard objectives add d.owner dummy
scoreboard objectives add c.owner dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add direction dummy
scoreboard objectives add enabled dummy
scoreboard objectives add timer dummy
scoreboard objectives add roll dummy
scoreboard objectives add emoji trigger
scoreboard objectives add sit trigger
scoreboard objectives add death deathCount

# --- interaction heads --- #
execute unless entity @e[type=item_display,tag=hd_fire] run summon minecraft:armor_stand 0.0 70.0 2.5 {Rotation:[-180.0f,0.0f],Tags:["hdfire"],Invisible:1b,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;111,222,333,441],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTYxNDk2NDI0MzE3NCwKICAicHJvZmlsZUlkIiA6ICJmZDQ3Y2I4YjgzNjQ0YmY3YWIyYmUxODZkYjI1ZmMwZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJDVUNGTDEyIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2UyNTVkNTE5ZmM1NGQ5ZDhmOTJlMzFjNDlhNzNhMTU2ZGMyZjZiMzExNjA3YmE4MDMzYjJjNjE3NjMwYmNhYjYiCiAgICB9CiAgfQp9"}]}}}}}
execute unless entity @e[type=interaction,tag=ia_fire] run summon minecraft:armor_stand 0.0 70.0 -2.5 {Rotation:[0.0f,0.0f],Tags:["hdwater"],Invisible:1b,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;111,222,333,442],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc2MTQzNjA1NjU1OSwKICAicHJvZmlsZUlkIiA6ICIwMTIxYzFjZDUxOTM0M2NmYWM4YzgyZThiNjVjYTFjZiIsCiAgInByb2ZpbGVOYW1lIiA6ICJfVmV4X1RWIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2IxZjExMjVmM2E5ODI5YTRjOTU0MWM3ZTNlNjViNmYwOGE4YjhiNzkyYmMwYzM4ZjlkYTYzOGEwOTI1NzM2NjMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}]}}}}}
execute unless entity @e[type=item_display,tag=hd_water] run summon minecraft:armor_stand -2.5 70.0 1.0 {Rotation:[-112.5f,0.0f],Tags:["hdair"],Invisible:1b,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;111,222,333,443],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc2MTQzNjExMTIxOSwKICAicHJvZmlsZUlkIiA6ICIzZGE2ZDgxOTI5MTY0MTNlODhlNzg2MjQ3NzA4YjkzZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJGZXJTdGlsZSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS80YTgxYTQzYWJiOTIyY2IxOTk4ZGExMDAxZjY3OWY1ZTVkYjRlOGIxZjY0MTJhNjA5MDdiYmFjZGQ3YTVkMGY1IgogICAgfQogIH0KfQ=="}]}}}}}
execute unless entity @e[type=interaction,tag=ia_water] run summon minecraft:armor_stand 2.5 70.0 1.0 {Rotation:[112.5f,0.0f],Tags:["hdstone"],Invisible:1b,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;111,222,333,444],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc2MTQzNjE1NTY5MCwKICAicHJvZmlsZUlkIiA6ICIyY2Y2MzExZjUyMTM0NTE2YTEyNTY3NWUwMzk3NmU2MSIsCiAgInByb2ZpbGVOYW1lIiA6ICJmaWdodHN0b2NrIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2VhNWExNTFlNTlmZjk0NGJlMzNiNWU1Njk0ZmYxYTg2ZDNlNzJkY2QwN2IxMWJjMDZjMTg2MWQyNGI4ZTYxMzIiCiAgICB9CiAgfQp9"}]}}}}}
execute unless entity @e[type=item_display,tag=hd_air] run summon minecraft:armor_stand 2.5 70.0 -1.0 {Rotation:[67.5f,0.0f],Tags:["hdearth"],Invisible:1b,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;111,222,333,445],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTcyMjkxNDA4MDM5MiwKICAicHJvZmlsZUlkIiA6ICIxN2I5ZDBmOWYxYzE0OTE5ODRkY2Y5ZGM2YzczZDYzYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJuYWJlNDk3NSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS80ZTllYTgyYzQ5NWE2NDcwZTJhYjkyZWZhNDQ4MmFmN2I5NWY5NWMwZTFjOWNiY2RkNzM4MmVjNWI5NWIxODdjIgogICAgfQogIH0KfQ=="}]}}}}}
execute unless entity @e[type=interaction,tag=ia_air] run summon minecraft:armor_stand -2.5 70.0 -1.0 {Rotation:[-67.5f,0.0f],Tags:["hdice"],Invisible:1b,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;111,222,333,446],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc2MTQzNjg1NDk4OCwKICAicHJvZmlsZUlkIiA6ICI0NmNhODkyZTY4ODA0YThmYjFkYzkwYjg0ZTY5ZjVmZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJPbG8xNjA2IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzg3NzRlMTYzM2Q0MjM3OTVlZWM0NGYyN2U0ZWU4MDQ0ZTUyM2JhYTYxOTYyOWVhNzU2NzczODkxMjZkMTlmOWIiCiAgICB9CiAgfQp9"}]}}}}}
execute unless entity @e[type=item_display,tag=hd_stone] run summon minecraft:interaction 0.0 71.35 2.5 {Rotation:[-180.0f,0.0f],width:0.8f,height:0.8f,Tags:["iafire"],CustomNameVisible:1b,CustomName:{"text":"мир Огня","color":"red"}}
execute unless entity @e[type=interaction,tag=ia_stone] run summon minecraft:interaction 0.0 71.35 -2.5 {Rotation:[0.0f,0.0f],width:0.8f,height:0.8f,Tags:["iawater"],CustomNameVisible:1b,CustomName:{"text":"мир Воды","color":"blue"}}
execute unless entity @e[type=item_display,tag=hd_earth] run summon minecraft:interaction -2.5 71.35 1.0 {Rotation:[-112.5f,0.0f],width:0.8f,height:0.8f,Tags:["iaair"],CustomNameVisible:1b,CustomName:{"text":"мир Воздуха","color":"green"}}
execute unless entity @e[type=interaction,tag=ia_earth] run summon minecraft:interaction 2.5 71.35 1.0 {Rotation:[112.5f,0.0f],width:0.8f,height:0.8f,Tags:["iastone"],CustomNameVisible:1b,CustomName:{"text":"мир Камня","color":"yellow"}}
execute unless entity @e[type=item_display,tag=hd_ice] run summon minecraft:interaction 2.5 71.35 -1.0 {Rotation:[67.5f,0.0f],width:0.8f,height:0.8f,Tags:["iaearth"],CustomNameVisible:1b,CustomName:{"text":"мир Земли","color":"light_purple"}}
execute unless entity @e[type=interaction,tag=ia_ice] run summon minecraft:interaction -2.5 71.35 -1.0 {Rotation:[-67.5f,0.0f],width:0.8f,height:0.8f,Tags:["iaice"],CustomNameVisible:1b,CustomName:{"text":"мир Льда","color":"white"}}

# --- general gamerules --- #
execute in toajoint:toajoint run gamerule allow_entering_nether_using_portals false
execute in toajoint:fire run gamerule allow_entering_nether_using_portals false
execute in toajoint:water run gamerule allow_entering_nether_using_portals false
execute in toajoint:air run gamerule allow_entering_nether_using_portals false
execute in toajoint:stone run gamerule allow_entering_nether_using_portals false
execute in toajoint:earth run gamerule allow_entering_nether_using_portals false
execute in toajoint:ice run gamerule allow_entering_nether_using_portals false
execute in toajoint:toajoint run gamerule random_tick_speed 0
execute in toajoint:fire run gamerule random_tick_speed 3
execute in toajoint:water run gamerule random_tick_speed 3
execute in toajoint:air run gamerule random_tick_speed 3
execute in toajoint:stone run gamerule random_tick_speed 3
execute in toajoint:earth run gamerule random_tick_speed 3
execute in toajoint:ice run gamerule random_tick_speed 3
execute in toajoint:toajoint run gamerule max_minecart_speed 64
execute in toajoint:fire run gamerule max_minecart_speed 64
execute in toajoint:water run gamerule max_minecart_speed 64
execute in toajoint:air run gamerule max_minecart_speed 64
execute in toajoint:stone run gamerule max_minecart_speed 64
execute in toajoint:earth run gamerule max_minecart_speed 64
execute in toajoint:ice run gamerule max_minecart_speed 64
execute in toajoint:toajoint run gamerule respawn_radius 0
execute in toajoint:fire run gamerule respawn_radius 0
execute in toajoint:water run gamerule respawn_radius 0
execute in toajoint:air run gamerule respawn_radius 0
execute in toajoint:stone run gamerule respawn_radius 0
execute in toajoint:earth run gamerule respawn_radius 0
execute in toajoint:ice run gamerule respawn_radius 0
execute in toajoint:toajoint run gamerule advance_time true
execute in toajoint:fire run gamerule advance_time true
execute in toajoint:water run gamerule advance_time true
execute in toajoint:air run gamerule advance_time true
execute in toajoint:stone run gamerule advance_time true
execute in toajoint:earth run gamerule advance_time false
execute in toajoint:ice run gamerule advance_time true
execute in toajoint:toajoint run gamerule advance_weather false
execute in toajoint:fire run gamerule advance_weather false
execute in toajoint:water run gamerule advance_weather false
execute in toajoint:air run gamerule advance_weather false
execute in toajoint:stone run gamerule advance_weather false
execute in toajoint:earth run gamerule advance_weather false
execute in toajoint:ice run gamerule advance_weather false
execute in toajoint:toajoint run gamerule reduced_debug_info true
execute in toajoint:fire run gamerule reduced_debug_info true
execute in toajoint:water run gamerule reduced_debug_info true
execute in toajoint:air run gamerule reduced_debug_info true
execute in toajoint:stone run gamerule reduced_debug_info true
execute in toajoint:earth run gamerule reduced_debug_info true
execute in toajoint:ice run gamerule reduced_debug_info true
execute in toajoint:toajoint run gamerule spread_vines false
execute in toajoint:fire run gamerule spread_vines false
execute in toajoint:water run gamerule spread_vines false
execute in toajoint:air run gamerule spread_vines false
execute in toajoint:stone run gamerule spread_vines false
execute in toajoint:earth run gamerule spread_vines false
execute in toajoint:ice run gamerule spread_vines false
execute in toajoint:toajoint run gamerule show_death_messages false
execute in toajoint:fire run gamerule show_death_messages false
execute in toajoint:water run gamerule show_death_messages false
execute in toajoint:air run gamerule show_death_messages false
execute in toajoint:stone run gamerule show_death_messages false
execute in toajoint:earth run gamerule show_death_messages false
execute in toajoint:ice run gamerule show_death_messages false
execute in toajoint:toajoint run gamerule mob_griefing true
execute in toajoint:fire run gamerule mob_griefing true
execute in toajoint:water run gamerule mob_griefing true
execute in toajoint:air run gamerule mob_griefing true
execute in toajoint:stone run gamerule mob_griefing true
execute in toajoint:earth run gamerule mob_griefing true
execute in toajoint:ice run gamerule mob_griefing true
execute in toajoint:toajoint run gamerule send_command_feedback false
execute in toajoint:fire run gamerule send_command_feedback false
execute in toajoint:water run gamerule send_command_feedback false
execute in toajoint:air run gamerule send_command_feedback false
execute in toajoint:stone run gamerule send_command_feedback false
execute in toajoint:earth run gamerule send_command_feedback false
execute in toajoint:ice run gamerule send_command_feedback false
execute in toajoint:toajoint run gamerule max_snow_accumulation_height 1
execute in toajoint:fire run gamerule max_snow_accumulation_height 1
execute in toajoint:water run gamerule max_snow_accumulation_height 1
execute in toajoint:air run gamerule max_snow_accumulation_height 1
execute in toajoint:stone run gamerule max_snow_accumulation_height 1
execute in toajoint:earth run gamerule max_snow_accumulation_height 1
execute in toajoint:ice run gamerule max_snow_accumulation_height 1

# --- spawner gamerules --- #
execute in toajoint:toajoint run gamerule spawn_mobs false
execute in toajoint:toajoint run gamerule spawn_monsters false
execute in toajoint:toajoint run gamerule spawn_patrols false
execute in toajoint:toajoint run gamerule spawn_phantoms false
execute in toajoint:toajoint run gamerule spawn_wandering_traders false
execute in toajoint:toajoint run gamerule spawn_wardens false
execute in toajoint:fire run gamerule spawn_mobs true
execute in toajoint:fire run gamerule spawn_monsters true
execute in toajoint:fire run gamerule spawn_patrols true
execute in toajoint:fire run gamerule spawn_phantoms true
execute in toajoint:fire run gamerule spawn_wandering_traders true
execute in toajoint:fire run gamerule spawn_wardens true
execute in toajoint:water run gamerule spawn_mobs true
execute in toajoint:water run gamerule spawn_monsters true
execute in toajoint:water run gamerule spawn_patrols true
execute in toajoint:water run gamerule spawn_phantoms true
execute in toajoint:water run gamerule spawn_wandering_traders true
execute in toajoint:water run gamerule spawn_wardens true
execute in toajoint:air run gamerule spawn_mobs true
execute in toajoint:air run gamerule spawn_monsters true
execute in toajoint:air run gamerule spawn_patrols true
execute in toajoint:air run gamerule spawn_phantoms true
execute in toajoint:air run gamerule spawn_wandering_traders true
execute in toajoint:air run gamerule spawn_wardens true
execute in toajoint:stone run gamerule spawn_mobs true
execute in toajoint:stone run gamerule spawn_monsters true
execute in toajoint:stone run gamerule spawn_patrols true
execute in toajoint:stone run gamerule spawn_phantoms true
execute in toajoint:stone run gamerule spawn_wandering_traders true
execute in toajoint:stone run gamerule spawn_wardens true
execute in toajoint:earth run gamerule spawn_mobs true
execute in toajoint:earth run gamerule spawn_monsters true
execute in toajoint:earth run gamerule spawn_patrols true
execute in toajoint:earth run gamerule spawn_phantoms true
execute in toajoint:earth run gamerule spawn_wandering_traders true
execute in toajoint:earth run gamerule spawn_wardens true
execute in toajoint:ice run gamerule spawn_mobs true
execute in toajoint:ice run gamerule spawn_monsters true
execute in toajoint:ice run gamerule spawn_patrols true
execute in toajoint:ice run gamerule spawn_phantoms true
execute in toajoint:ice run gamerule spawn_wandering_traders true
execute in toajoint:ice run gamerule spawn_wardens true

# --- initial times --- # 
execute in toajoint:toajoint run time set noon
execute in toajoint:fire run time set day
execute in toajoint:water run time set day
execute in toajoint:air run time set day
execute in toajoint:stone run time set day
execute in toajoint:earth run time set noon
execute in toajoint:ice run time set day

# --- optional reload message --- #
tellraw @a [\
{"text":"toajoint_data ","color":"green"},\
{"text":"has been reloaded ","color":"dark_green"},\
{"text":"successfully","color":"green"},\
{"text":".","color":"dark_green"}]