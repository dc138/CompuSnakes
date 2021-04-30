execute as @s[tag=cs_clock] unless score @s cs_clk_int_tgt matches -2147483648..2147483647 run scoreboard players set @s cs_clk_int_tgt 40
execute as @s[tag=cs_clock] unless score @s cs_clk_pls_tgt matches -2147483648..2147483647 run scoreboard players set @s cs_clk_pls_tgt 20
