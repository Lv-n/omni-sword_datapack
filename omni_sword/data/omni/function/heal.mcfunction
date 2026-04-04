execute at @s run particle minecraft:enchant ~ ~1 ~ 0.25 0.25 0.25 1 25 force
function omni:armordurabilityfix
execute as @s run effect give @s minecraft:instant_health 4 252
execute as @s run effect give @s minecraft:resistance 3 255
execute as @s run effect give @s minecraft:saturation 2 255
advancement revoke @s only omni:heal
