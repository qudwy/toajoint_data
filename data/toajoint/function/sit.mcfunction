execute if entity @s[nbt={OnGround:1b}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Invisible:1b,ShowArms:1b,Invulnerable:1b,Tags:["sitting"]}
execute if entity @s[nbt={OnGround:1b}] at @s run tp @e[tag=sitting,limit=1,sort=nearest] @s
execute if entity @s[nbt={OnGround:1b}] at @s as @e[tag=sitting,limit=1,sort=nearest] run tp @s ~ ~-.95 ~
execute if entity @s[nbt={OnGround:1b}] at @s positioned ~ ~-.95 ~ run ride @s mount @e[tag=sitting,limit=1,sort=nearest]
scoreboard players reset @s sit