# Handle clock logic

execute as @s unless score @s cs_clk_int >= @s cs_clk_int_tgt run scoreboard players add @s cs_clk_int 1
execute as @s if score @s cs_clk_int >= @s cs_clk_int_tgt run scoreboard players set @s cs_clk_int 0
