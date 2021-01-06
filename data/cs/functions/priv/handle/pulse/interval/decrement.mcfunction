execute as @s unless score @s cs_pulse_target matches -2147483648..5 run scoreboard players remove @s cs_pulse_target 5
loot replace entity @s weapon loot cs:eggs/pulse