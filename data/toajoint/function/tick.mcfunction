# --- useful recipe book --- #
execute as @a at @a run recipe give @s *

# --- colorful names --- #
execute as @a at @s if dimension overworld run team join overworld @s
execute as @a at @s if dimension toajoint:fire run team join fire @s
execute as @a at @s if dimension toajoint:water run team join water @s
execute as @a at @s if dimension toajoint:air run team join air @s
execute as @a at @s if dimension toajoint:stone run team join stone @s
execute as @a at @s if dimension toajoint:earth run team join earth @s
execute as @a at @s if dimension toajoint:ice run team join ice @s

# --- compass coordinates --- #
execute as @a unless score @s enabled matches 0..1 run scoreboard players set @s enabled 1
execute as @a store result score @s x run data get entity @s Pos[0]
execute as @a store result score @s y run data get entity @s Pos[1]
execute as @a store result score @s z run data get entity @s Pos[2]
execute as @a store result score @s direction run data get entity @s Rotation[0]
execute as @a if score @s enabled matches 1 if items entity @s weapon.* minecraft:compass run function toajoint:direction

# --- sit command --- #
execute as @e[tag=sitting] at @s unless entity @p[distance=..1.1] run kill @s 
execute as @e[tag=sitting] at @s positioned ~ ~.95 ~ run data modify entity @s Rotation set from entity @p Rotation
scoreboard players enable @a sit
execute as @a[scores={sit=1..}] run function toajoint:sit

# --- interaction heads --- #
execute as @e[type=minecraft:interaction,tag=iafire,nbt={interaction:{}}] at @s as @p run function toajoint:random/fire
execute as @e[type=minecraft:interaction,tag=iafire] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=iawater,nbt={interaction:{}}] at @s as @p run function toajoint:random/water
execute as @e[type=minecraft:interaction,tag=iawater] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=iaair,nbt={interaction:{}}] at @s as @p run function toajoint:random/air
execute as @e[type=minecraft:interaction,tag=iaair] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=iastone,nbt={interaction:{}}] at @s as @p run function toajoint:random/stone
execute as @e[type=minecraft:interaction,tag=iastone] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=iaearth,nbt={interaction:{}}] at @s as @p run function toajoint:random/earth
execute as @e[type=minecraft:interaction,tag=iaearth] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=iaice,nbt={interaction:{}}] at @s as @p run function toajoint:random/ice
execute as @e[type=minecraft:interaction,tag=iaice] run data remove entity @s interaction

# --- armor stands --- #
execute if dimension toajoint:fire as @e[type=minecraft:armor_stand] unless data entity @s {ShowArms:1b} run data modify entity @s ShowArms set value 1b
execute if dimension toajoint:water as @e[type=minecraft:armor_stand] unless data entity @s {ShowArms:1b} run data modify entity @s ShowArms set value 1b
execute if dimension toajoint:air as @e[type=minecraft:armor_stand] unless data entity @s {ShowArms:1b} run data modify entity @s ShowArms set value 1b
execute if dimension toajoint:stone as @e[type=minecraft:armor_stand] unless data entity @s {ShowArms:1b} run data modify entity @s ShowArms set value 1b
execute if dimension toajoint:earth as @e[type=minecraft:armor_stand] unless data entity @s {ShowArms:1b} run data modify entity @s ShowArms set value 1b
execute if dimension toajoint:ice as @e[type=minecraft:armor_stand] unless data entity @s {ShowArms:1b} run data modify entity @s ShowArms set value 1b

# --- emoji menu --- #
scoreboard players enable @a emoji
execute as @a[scores={emoji=1..}] at @s run dialog show @s toajoint:emoji
execute as @a[scores={emoji=1..}] run scoreboard players set @s emoji 0

# --- no mob grief --- #
execute as @e[type=minecraft:fireball] unless data entity @s {ExplosionPower:0b} run data modify entity @s ExplosionPower set value 0b
execute at @e[type=creeper] as @a[distance=..6] run return run gamerule mob_griefing false
gamerule mob_griefing true

# --- custom death messages --- #
execute as @a[scores={death=1}] run function toajoint:death

# --- wandering trader announcements --- #
execute as @e[type=minecraft:wandering_trader,tag=!announced] at @s run function toajoint:announce

# --- bedrock tridents --- #
execute as @e[type=minecraft:trident] at @s if block ~ ~ ~ minecraft:moving_piston run function toajoint:damage
execute as @e[type=minecraft:trident,tag=hasowner] at @s run data merge entity @s {life:0}

# --- teleportation --- #
execute as @a at @s if dimension toajoint:fire if entity @s[x=-1,y=87,z=-1,dx=1,dy=0,dz=1,nbt={OnGround:1b}] in overworld run tp @s 0.0 70.0 0.0
execute as @a at @s if dimension toajoint:water if entity @s[x=-1,y=63,z=-1,dx=1,dy=0,dz=1,nbt={OnGround:1b}] in overworld run tp @s 0.0 70.0 0.0
execute as @a at @s if dimension toajoint:air if entity @s[x=-1,y=64,z=-1,dx=1,dy=0,dz=1,nbt={OnGround:1b}] in overworld run tp @s 0.0 70.0 0.0
execute as @a at @s if dimension toajoint:stone if entity @s[x=-1,y=68,z=-1,dx=1,dy=0,dz=1,nbt={OnGround:1b}] in overworld run tp @s 0.0 70.0 0.0
execute as @a at @s if dimension toajoint:earth if entity @s[x=-1,y=-42,z=-1,dx=1,dy=0,dz=1,nbt={OnGround:1b}] in overworld run tp @s 0.0 70.0 0.0
execute as @a at @s if dimension toajoint:ice if entity @s[x=-1,y=70,z=-1,dx=1,dy=0,dz=1,nbt={OnGround:1b}] in overworld run tp @s 0.0 70.0 0.0

# --- lingering arrows --- #
execute as @e[type=arrow,nbt={inGround:1b,item:{id:"minecraft:tipped_arrow"}}] at @s run summon area_effect_cloud ~ ~ ~ {RadiusOnUse:-0,Duration:60}
execute as @e[type=area_effect_cloud,tag=!lingered] at @s run data modify entity @s potion_contents set from entity @n[type=minecraft:arrow, tag=!lingered] item.components."minecraft:potion_contents"
tag @e[type=area_effect_cloud,tag=!lingered] add lingered
tag @e[type=arrow,nbt={inGround:1b,item:{id:"minecraft:tipped_arrow"}}] add lingered
execute as @e[type=arrow,tag=lingered] at @s run data modify entity @s item set value {id:"minecraft:arrow"}