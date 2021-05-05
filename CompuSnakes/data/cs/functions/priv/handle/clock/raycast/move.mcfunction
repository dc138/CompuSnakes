execute if score @s cs_ray_dst matches 150.. run tag @s add cs_ray_done

execute at @s run tp @s ^ ^ ^-0.05

execute at @s[tag=cs_ray_no_sneak] unless block ~ ~ ~ #cs:air run summon armor_stand ^ ^ ^0.05 {NoAI: 1b, NoGravity: 1b, NoBasePlate: 1b, Small: 1b, Invisible: 1b, Invulnerable: 1b, Tags: ["cs_clock", "cs_just_placed", "cs_ray_clock_target"]}
execute as @e[tag=cs_clock,tag=cs_ray_clock_target] at @s align xyz run tp @s ~0.5 ~ ~0.5

scoreboard players operation @e[tag=cs_clock,tag=cs_ray_clock_target] cs_clk_int_tgt = @s[tag=cs_ray_no_sneak] cs_clk_int_tgt
scoreboard players operation @e[tag=cs_clock,tag=cs_ray_clock_target] cs_clk_pls_tgt = @s[tag=cs_ray_no_sneak] cs_clk_pls_tgt

tag @e[tag=cs_ray_pulse_target] remove cs_ray_pulse_target

execute at @s[tag=cs_ray_sneak] align xyz unless block ~ ~ ~ #cs:air run summon armor_stand ~0.5 ~ ~0.5 {NoAI: 1b, NoGravity: 1b, NoBasePlate: 1b, Small: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["cs_ray_clock_edit"]}

execute as @e[tag=cs_ray_clock_edit] at @s if entity @e[distance=0,tag=cs_clock_highlight,sort=nearest,limit=1] run tag @s add cs_clock_unhighlight
execute if entity @e[tag=cs_ray_clock_edit,tag=cs_clock_unhighlight] run effect clear @e[tag=cs_clock_highlight]
execute if entity @e[tag=cs_ray_clock_edit,tag=cs_clock_unhighlight] run tp @e[tag=cs_clock_highlight] 0 10000 0
execute if entity @e[tag=cs_ray_clock_edit,tag=cs_clock_unhighlight] run tag @s add cs_ray_clock_hit
execute if entity @e[tag=cs_ray_clock_edit,tag=cs_clock_unhighlight] run kill @e[tag=cs_clock_highlight]
execute if entity @e[tag=cs_ray_clock_edit,tag=cs_clock_unhighlight] run kill @e[tag=cs_ray_clock_edit]

execute as @e[tag=cs_ray_clock_edit] at @s unless entity @e[distance=0,tag=cs_clock,sort=nearest,limit=1] run kill @s

execute at @e[tag=cs_ray_clock_edit] if entity @e[distance=0,tag=cs_clock,sort=nearest,limit=1] run tag @e[tag=cs_clock_editing] remove cs_clock_editing
execute at @e[tag=cs_ray_clock_edit] run tag @e[distance=0,tag=cs_clock,sort=nearest,limit=1] add cs_clock_editing

execute at @e[tag=cs_ray_clock_edit] run effect clear @e[tag=cs_clock_highlight]
execute at @e[tag=cs_ray_clock_edit] run tp @e[tag=cs_clock_highlight] 0 10000 0
execute at @e[tag=cs_ray_clock_edit] run kill @e[tag=cs_clock_highlight]

execute at @e[tag=cs_ray_clock_edit] align xyz unless block ~ ~ ~ #cs:air run summon shulker ~0.5 ~ ~0.5 {NoGravity: 1b, Glowing: 1b, Tags: ["cs_clock_highlight"], NoAI: 1b, Invulnerable: 1b, DeathTime: 0, DeathLootTable: "cs:drops/empty", Silent: 1b}
execute at @e[tag=cs_ray_clock_edit] run effect give @e[tag=cs_clock_highlight] invisibility 1000000 1 true
execute at @e[tag=cs_ray_clock_edit] run team join cs_green @e[tag=cs_clock_highlight]

execute if entity @e[tag=cs_ray_clock_edit] run tag @s add cs_ray_clock_hit
execute if entity @e[tag=cs_ray_clock_edit] as @p run function cs:priv/handle/clock/menu

kill @e[tag=cs_ray_clock_edit]

execute at @s unless block ~ ~ ~ #cs:air run tag @s add cs_ray_done
execute run scoreboard players add @s cs_ray_dst 1
