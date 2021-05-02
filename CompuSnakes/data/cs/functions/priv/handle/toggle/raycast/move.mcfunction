execute if score @s cs_ray_dst matches 150.. run tag @s add cs_ray_done

execute at @s run tp @s ^ ^ ^-0.05
execute at @s[tag=cs_ray_no_sneak] align xyz unless block ~ ~ ~ #cs:air run summon armor_stand ~0.5 ~ ~0.5 {NoAI: 1b, NoGravity: 1b, NoBasePlate: 1b, Small: 1b, Invisible: 1b, Invulnerable: 1b, Tags: ["cs_toggle", "cs_just_placed_sync"]}
execute at @s unless block ~ ~ ~ #cs:air run tag @s add cs_ray_done

execute run scoreboard players add @s cs_ray_dst 1
