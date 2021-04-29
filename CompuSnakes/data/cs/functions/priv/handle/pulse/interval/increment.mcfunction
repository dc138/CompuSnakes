execute as @s unless score @s cs_pulse_target matches 200..2147483647 run scoreboard players add @s cs_pulse_target 5
loot replace entity @s weapon loot cs:eggs/pulse