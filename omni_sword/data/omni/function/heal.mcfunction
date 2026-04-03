execute at @s run particle minecraft:enchant ~ ~1 ~ 0.25 0.25 0.25 1 25 force
function omni:armordurabilityfix
attribute @s fall_damage_multiplier base set 0
execute as @s run effect give @s minecraft:instant_health 4 0
execute as @s run effect give @s minecraft:resistance 3 0
execute as @s run effect give @s minecraft:saturation 2 0
attribute @s fall_damage_multiplier base set 1
advancement revoke @s only omni:heal
