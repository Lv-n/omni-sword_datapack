execute at @s run particle minecraft:enchant ~ ~1 ~ 0.25 0.25 0.25 1 25 force
function omni:armordurabilityfix
execute as @s run effect give @s minecraft:instant_health 4 252
execute as @s run effect give @s minecraft:resistance 3 255
execute as @s run effect give @s minecraft:saturation 2 255
# 1. Mark the player
tag @s add has_forcefield

# 2. Movement Cleanup: Remove trailing glass as you walk
execute at @s run fill ~10 ~-3 ~10 ~-10 ~10 ~-10 air replace glass

# 3. Create the Force Field
execute at @s run fill ~4 ~-1 ~4 ~-4 ~5 ~-4 glass replace air hollow

# 5. The "Safety Check": Schedule the cleanup to run in 2 ticks
# If you are still sneaking in 2 ticks, the heal function will run again and "push" this timer back.
schedule function omni:cleanup 2t

# 6. Reset advancement to detect the "hold"
advancement revoke @s only omni:heal
