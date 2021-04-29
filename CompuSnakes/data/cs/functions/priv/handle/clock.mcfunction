# Handle adittional entities & blocks placed by the clock entity

execute as @s run function cs:priv/handle/clock/blocks
execute as @s run function cs:priv/handle/clock/scores

# Handle main functionality

execute at @s if score @s cs_clk_int matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Tags:["cs_pulse"],Invisible:1b}
execute at @s if score @s cs_clk_int matches 0 run scoreboard players operation @e[type=armor_stand,tag=cs_pulse,tag=!cs_just_placed,sort=nearest] cs_pulse_target = @s cs_clk_lght_tgt
