execute at @e[distance=1..20,limit=5] summon minecraft:lightning_bolt run gamerule fire_spread_radius_around_player 0
schedule function omni:setfirespreadtickdefault 20t
advancement revoke @s only omni:strikehit
