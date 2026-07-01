execute if score @s direction matches -135..-45 run data merge storage toajoint:macros {d: "восток"}
execute if score @s direction matches -45..45 run data merge storage toajoint:macros {d: "юг"}
execute if score @s direction matches 45..135 run data merge storage toajoint:macros {d: "запад"}
execute if score @s direction matches 135.. run data merge storage toajoint:macros {d: "север"}
execute if score @s direction matches ..-135 run data merge storage toajoint:macros {d: "север"}

function toajoint:display with storage toajoint:macros