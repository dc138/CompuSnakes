# Configure scoreobards

execute as @s[tag=cs_just_placed] run scoreboard players set @s cs_clk_int 0
execute as @s[tag=cs_just_placed] unless score @s cs_clk_int_tgt matches 10..400 run scoreboard players set @s cs_clk_int_tgt 40
execute as @s[tag=cs_just_placed] unless score @s cs_clk_pls_tgt matches 5..200 run scoreboard players set @s cs_clk_pls_tgt 20
