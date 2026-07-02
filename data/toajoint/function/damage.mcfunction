execute as @a at @s if entity @s[tag=!hasuuid] run function toajoint:player
execute if entity @s[tag=!hasowner] run function toajoint:trident

tag @s add searching
execute as @a at @s if score @s a.uuid = @n[tag=searching] a.owner if score @s b.uuid = @n[tag=searching] b.owner if score @s c.uuid = @n[tag=searching] c.owner if score @s d.uuid = @n[tag=searching] d.owner run tag @s add owner
execute as @e[type=!#toajoint:nondamagable,distance=..1,limit=1,sort=random] at @s run damage @s 8 minecraft:trident by @n[tag=owner]
execute if entity @e[tag=!owner] run execute as @e[type=!#toajoint:nondamagable,distance=..1,limit=1,sort=random] at @s run damage @s 8 minecraft:trident
tag @n[tag=owner] remove owner
tag @s add searching

data merge entity @s {life:0}

playsound item.trident.hit player @a ~ ~ ~ 1