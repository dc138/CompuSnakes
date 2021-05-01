execute as @s unless score @s cs_uses matches -2147483648..2147483647 run scoreboard players set @s cs_uses 0
execute as @s unless score @s cs_pulse_tgt matches 5..200 run scoreboard players set @s cs_pulse_tgt 20
execute as @s unless score @s cs_clk_int_tgt matches 10..400 run scoreboard players set @s cs_clk_int_tgt 40
execute as @s unless score @s cs_clk_pls_tgt matches 5..200 run scoreboard players set @s cs_clk_pls_tgt 20