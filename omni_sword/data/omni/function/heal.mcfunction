function omni:armordurabilityfix
execute as @s run effect give @s minecraft:instant_health 4 0
execute as @s run effect give @s minecraft:resistance 3 0
execute as @s run effect give @s minecraft:saturation 2 0
advancement revoke @s only omni:heal
