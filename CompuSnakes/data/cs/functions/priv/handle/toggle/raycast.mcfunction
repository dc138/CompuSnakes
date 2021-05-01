execute as @s at @s anchored eyes if score @s cs_uses matches 1.. unless predicate cs:sneaking run summon armor_stand ^ ^ ^0.1 {NoGravity: 1b, Small: 1b, Tags: ["cs_ray_no_sneak", "cs_ray_toggle", "cs_ray_new"], Invulnerable: 1b, Invisible: 1b}

execute at @s as @e[tag=cs_ray_toggle,tag=cs_ray_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[scores={cs_uses=1..},sort=nearest] eyes
execute at @s as @e[tag=cs_ray_toggle,tag=cs_ray_new,limit=1,sort=nearest] run tag @s remove cs_ray_new
