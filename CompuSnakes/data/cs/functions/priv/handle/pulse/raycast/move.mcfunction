execute if score @s cs_ray_dst matches 150.. run tag @s add cs_ray_done

execute at @s run tp @s ^ ^ ^-0.05

execute at @s[tag=cs_ray_no_sneak] align xyz unless block ~ ~ ~ #cs:air run summon armor_stand ~0.5 ~ ~0.5 {NoAI: 1b, NoGravity: 1b, NoBasePlate: 1b, Small: 1b, Invisible: 1b, Invulnerable: 1b, Tags: ["cs_pulse", "cs_just_placed", "cs_ray_pulse_target"]}
scoreboard players operation @e[tag=cs_ray_pulse_target] cs_pulse_tgt = @s[tag=cs_ray_no_sneak] cs_pulse_tgt
tag @e[tag=cs_ray_pulse_target] remove cs_ray_pulse_target

execute at @s unless block ~ ~ ~ #cs:air run tag @s add cs_ray_done
execute run scoreboard players add @s cs_ray_dst 1
