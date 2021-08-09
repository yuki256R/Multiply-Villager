#[0~(実行者のdummyの数値 - 1)までの乱数を実行者のdummyに代入するfunction
summon area_effect_cloud ~ ~ ~ {Tags:["RandomAEC"],Duration:10}

execute store result score @e[type=area_effect_cloud,tag=RandomAEC,limit=1] dummy run data get entity @e[type=area_effect_cloud,tag=RandomAEC,limit=1] UUID[0] 0.01
scoreboard players operation @e[type=area_effect_cloud,tag=RandomAEC,limit=1] dummy %= @s dummy
scoreboard players operation @s dummy = @e[type=area_effect_cloud,tag=RandomAEC,limit=1] dummy

kill @e[type=area_effect_cloud,tag=RandomAEC]