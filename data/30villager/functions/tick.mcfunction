# 殴られた村人を検知する
execute as @a if entity @s[scores={DamageDealt=1..}] at @s if entity @e[type=villager,nbt={HurtTime:10s},distance=..5] run function 30villager:villager/hurt
execute as @a if entity @s[scores={DamageDealt=1..}] run scoreboard players reset @s DamageDealt