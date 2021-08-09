scoreboard players reset @s counter

execute at @s as @e[type=villager,tag=30Villager,limit=50,sort=random,distance=5..] run tag @s add reduction

execute as @e[tag=reduction] at @s run particle large_smoke ~ ~ ~ 0.1 0.2 0.1 0 8
tp @e[tag=reduction] ~ ~-1000 ~
kill @e[tag=reduction]