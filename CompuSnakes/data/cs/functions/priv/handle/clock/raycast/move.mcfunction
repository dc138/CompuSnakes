execute if score @s cs_ray_dst matches 150.. run tag @s add cs_ray_done

execute at @s run tp @s ^ ^ ^-0.05

execute at @s[tag=cs_ray_no_sneak] unless block ~ ~ ~ #cs:air run summon armor_stand ^ ^ ^0.05 {NoAI: 1b, NoGravity: 1b, NoBasePlate: 1b, Small: 1b, Invisible: 1b, Invulnerable: 1b, Tags: ["cs_clock", "cs_just_placed", "cs_ray_clock_target"]}

execute as @e[tag=cs_clock,tag=cs_ray_clock_target] at @s align xyz run tp @s ~0.5 ~ ~0.5
scoreboard players operation @e[tag=cs_clock,tag=cs_ray_clock_target] cs_clk_int_tgt = @s[tag=cs_ray_no_sneak] cs_clk_int_tgt
scoreboard players operation @e[tag=cs_clock,tag=cs_ray_clock_target] cs_clk_pls_tgt = @s[tag=cs_ray_no_sneak] cs_clk_pls_tgt

tag @e[tag=cs_ray_pulse_target] remove cs_ray_pulse_target

execute at @s unless block ~ ~ ~ #cs:air run tag @s add cs_ray_done
execute run scoreboard players add @s cs_ray_dst 1
