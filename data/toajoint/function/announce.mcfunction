tag @s add announced
execute as @a if predicate toajoint:nearby run tellraw @s [{"text": "неподалёку появился ", "color": "dark_green"}, {"text": "странствующий торговец", "color": "green"}, {"text": "!", "color": "dark_green"}]
