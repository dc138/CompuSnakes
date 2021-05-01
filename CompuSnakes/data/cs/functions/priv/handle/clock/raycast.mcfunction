execute as @s at @s anchored eyes if score @s cs_uses matches 1.. if predicate cs:sneaking run summon armor_stand ^ ^ ^0.1 {NoGravity: 1b, Small: 1b, Tags: ["cs_ray_sneak", "cs_ray_clock", "cs_ray_new"], Invulnerable: 1b, Invisible: 1b}
execute as @s at @s anchored eyes if score @s cs_uses matches 1.. unless predicate cs:sneaking run summon armor_stand ^ ^ ^0.1 {NoGravity: 1b, Small: 1b, Tags: ["cs_ray_no_sneak", "cs_ray_clock", "cs_ray_new"], Invulnerable: 1b, Invisible: 1b}

execute at @s as @e[tag=cs_ray_clock,tag=cs_ray_new,limit=1,sort=nearest] run scoreboard players operation @e[tag=cs_ray_clock,tag=cs_ray_new,limit=1,sort=nearest] cs_clk_int_tgt = @p cs_clk_int_tgt
execute at @s as @e[tag=cs_ray_clock,tag=cs_ray_new,limit=1,sort=nearest] run scoreboard players operation @e[tag=cs_ray_clock,tag=cs_ray_new,limit=1,sort=nearest] cs_clk_pls_tgt = @p cs_clk_pls_tgt
execute at @s as @e[tag=cs_ray_clock,tag=cs_ray_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[scores={cs_uses=1..},sort=nearest] eyes
execute at @s as @e[tag=cs_ray_clock,tag=cs_ray_new,limit=1,sort=nearest] run tag @s remove cs_ray_new
