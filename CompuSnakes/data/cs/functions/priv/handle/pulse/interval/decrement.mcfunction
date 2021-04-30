execute as @s unless score @s cs_pulse_tgt matches -2147483648..5 run scoreboard players remove @s cs_pulse_tgt 5
loot replace entity @s weapon loot cs:eggs/pulse