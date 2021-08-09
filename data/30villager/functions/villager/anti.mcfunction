execute at @e[tag=Hurt,limit=1,sort=nearest] run playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~ 1 1
execute at @e[tag=Hurt,limit=1,sort=nearest] run playsound entity.villager.no master @s ~ ~ ~ 1 1
tellraw @s {"text":"\u6751\u4eba\u306f\u30a2\u30f3\u30c1\u306b\u306a\u3063\u305f\uff01","bold":true,"color":"dark_purple"}

execute at @e[tag=Hurt,limit=1,sort=nearest] run summon illusioner ~ ~ ~ {Attributes:[{Modifiers:[{Name:"minecraft:generic.max_health"},{Amount:3.0}]}],Health:3.0f}
tp @e[tag=Hurt,limit=1,sort=nearest] ~ ~-1000 ~

scoreboard players remove @s Subs 1
scoreboard players add @s Anti 1