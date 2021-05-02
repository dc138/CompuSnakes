execute unless score @s cs_clk_int = @s cs_clk_int run scoreboard players set @s cs_clk_int 0

execute at @s if score @s cs_clk_int matches 0 if block ~1 ~ ~ #cs:snake run summon armor_stand ~1 ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_pulse"], Invisible: 1b}
execute at @s if score @s cs_clk_int matches 0 if block ~ ~1 ~ #cs:snake run summon armor_stand ~ ~1 ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_pulse"], Invisible: 1b}
execute at @s if score @s cs_clk_int matches 0 if block ~ ~ ~1 #cs:snake run summon armor_stand ~ ~ ~1 {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_pulse"], Invisible: 1b}
execute at @s if score @s cs_clk_int matches 0 if block ~-1 ~ ~ #cs:snake run summon armor_stand ~-1 ~ ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_pulse"], Invisible: 1b}
execute at @s if score @s cs_clk_int matches 0 if block ~ ~-1 ~ #cs:snake run summon armor_stand ~ ~-1 ~ {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_pulse"], Invisible: 1b}
execute at @s if score @s cs_clk_int matches 0 if block ~ ~ ~-1 #cs:snake run summon armor_stand ~ ~ ~-1 {Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, Tags: ["cs_pulse"], Invisible: 1b}

execute at @s if score @s cs_clk_int matches 0 run scoreboard players operation @e[type=armor_stand,tag=cs_pulse,tag=!cs_just_placed,sort=nearest] cs_pulse_tgt = @s cs_clk_pls_tgt

execute as @s unless score @s cs_clk_int >= @s cs_clk_int_tgt run scoreboard players add @s cs_clk_int 1
execute as @s if score @s cs_clk_int >= @s cs_clk_int_tgt run scoreboard players set @s cs_clk_int 0
