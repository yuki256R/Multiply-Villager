#殴られた村人にタグ付け
tag @e[type=villager,nbt={HurtTime:10s},distance=..5] add Hurt

#とりあえず近くに村人を召喚して3倍にする
execute at @e[tag=Hurt,limit=1,sort=nearest] positioned ~ ~0.75 ~ run summon villager ^1 ^ ^-1 {Tags:["30Villager"]}
execute at @e[tag=Hurt,limit=1,sort=nearest] positioned ~ ~0.75 ~ run summon villager ^-1 ^ ^-1 {Tags:["30Villager"]}

#ハートのパーティクルも出す
execute at @e[tag=Hurt,limit=1,sort=nearest] positioned ~ ~0.75 ~ positioned ^1 ^ ^-1 run particle heart ~ ~2 ~ 0.1 0.1 0.1 0.5 8
execute at @e[tag=Hurt,limit=1,sort=nearest] positioned ~ ~0.75 ~ positioned ^-1 ^ ^-1 run particle heart ~ ~2 ~ 0.1 0.1 0.1 0.5 8

execute at @e[tag=Hurt,limit=1,sort=nearest] run playsound entity.villager.trade master @s ~ ~ ~ 1 1

#ファンが増える
scoreboard players add @s Subs 2
scoreboard players add @s counter 2

#30%の確率でアンチになる
scoreboard players set @s dummy 10
function 30villager:calc/random
execute if entity @s[scores={dummy=..2}] run function 30villager:villager/anti
scoreboard players reset @s dummy

#counterの数に応じて負荷軽減
execute if entity @s[scores={counter=50..}] run function 30villager:villager/reduction

#タグけし
tag @e remove Hurt