# a random number between 1 and 4 is rolled and stored in the scoreboard
execute store result score #direction_roll roll run random value 1..4

# teleportation based on the number rolled
execute if score #direction_roll roll matches 1 in toajoint:earth run tp @s 1.5 -41 0.0
execute if score #direction_roll roll matches 2 in toajoint:earth run tp @s -1.5 -41 0.0
execute if score #direction_roll roll matches 3 in toajoint:earth run tp @s 0.0 -41 1.5
execute if score #direction_roll roll matches 4 in toajoint:earth run tp @s 0.0 -41 -1.5